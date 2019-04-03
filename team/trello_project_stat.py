import json
import logging
logging.basicConfig(level=logging.DEBUG)

TODO = "ToDo"
DOING = "InProgress"
DONE = "Done"

def select_member(members, id):
    return [i['fullName'] for i in members if i['id'] == id]

with open("../../MSCP_2019-04-02.json", "r") as read_file:
    data = json.load(read_file)
    card_id_member = data['cards'][0]['idMembers'][0]
    card_id_list = data['cards'][0]['idList']
    card_member = data['members'][0]['fullName']
    card_list = data['lists'][0]['name']

#process lists
members = data['members']
lists = data['lists']
todo_id = [i['id'] for i in lists if i['name'] == TODO and i['closed']== False]
doing_id = [i['id'] for i in lists if i['name'] == DOING and i['closed']== False]
done_id = [i['id'] for i in lists if i['name'] == DONE and i['closed']== False]

#process cards
cards = data['cards']
todo_list = [i for i in cards if i['idList'] == todo_id[0] and i['closed']== False]
doing_list = [i for i in cards if i['idList'] == doing_id[0] and i['closed']== False]
done_list = [i for i in cards if i['idList'] == done_id[0] and i['closed']== False]

#create cvs lists
todo_cvs = [(i['name'], select_member(members, i['idMembers'][0])) for i in todo_list]
doing_cvs = [(i['name'], select_member(members, i['idMembers'][0])) for i in doing_list]
done_cvs = [(i['name'], select_member(members, i['idMembers'][0])) for i in done_list]



logging.info("End of the script")