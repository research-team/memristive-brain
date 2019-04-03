import re
import csv
import sys
import json
import logging

logging.basicConfig(level=logging.DEBUG)

json_file = "../../MSCP_2019-04-03.json"

TODO = "ToDo"
DOING = "InProgress"
DONE = "Done"

def select_member(members, id):
    return [i['fullName'] for i in members if i['id'] == id][0]


def select_estimate(name):
    """
    Returns first match of the estimates of the name of the specified task
    :param name: the string name of the task
    :return: estimates if found
    """
    m = re.search(r'[(][0-9*][)]', name)
    if m is None: return 0
    return m.group(0)[1:-1]

def select_actual(name):
    """
    Returns first match of the actual time spent from the name of specified task
    :param name: the sting name of the task with estimates and actual time spent
    :return: the actual time spent if found
    """
    m = re.search(r'[\[][0-9*][\]]', name)
    if m is None: return 0
    return m.group(0)[1:-1]


with open(json_file, "r") as read_file:
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
todo_csv = [(select_estimate(i['name']), select_member(members, i['idMembers'][0])) for i in todo_list]
doing_csv = [(select_estimate(i['name']), select_member(members, i['idMembers'][0])) for i in doing_list]
done_csv = [(select_estimate(i['name']), select_actual(i['name']), select_member(members, i['idMembers'][0])) for i in done_list]

#logging.info("End of the script")

#output
##Todo
print(TODO)
writer = csv.writer(sys.stdout)
writer.writerows(todo_csv)
print('\n')
##Doing
print(DOING)
writer = csv.writer(sys.stdout)
writer.writerows(doing_csv)
print('\n')
##Done
print(DONE)
writer = csv.writer(sys.stdout)
writer.writerows(done_csv)
print('\n')


