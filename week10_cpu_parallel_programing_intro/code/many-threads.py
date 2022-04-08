#!/usr/bin/env python3
#
# https://realpython.com/intro-to-python-threading
# https://realpython.com/python-enumerate

import logging
import threading
import time
import sys

def thread_function(name):
    logging.info('Thread %s: Starting task(s) ...', name)
    time.sleep(2)
    logging.info('Thread %s: Task(s) complete.', name)

def main():
    logging.basicConfig(format='%(asctime)s: %(message)s', 
                        level=logging.INFO,
                        datefmt='%H:%M:%S')

    thread_list = list()
    for thread_num in range(3):
        logging.info('Main: Creating thread %d ...', thread_num)
        thread = threading.Thread(target=thread_function,
                                  args=(thread_num,),
                                  daemon=False)
        thread_list.append(thread)

    for thread_num, thread in enumerate(thread_list):
        logging.info('Main: Starting thread %d ...', thread_num)
        thread.start()

    for thread_num, x in enumerate(thread_list):
        logging.info('Main: Joining thread %d ...', thread_num)
        thread.join()
        logging.info('Main: Thread %d joined.', thread_num)

    logging.info('Main: Program completed.')
    


if __name__ == '__main__':
    sys.exit(main())
