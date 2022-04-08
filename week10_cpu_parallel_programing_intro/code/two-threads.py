#!/usr/bin/env python3
#
# https://realpython.com/intro-to-python-threading

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

    logging.info('Main: Creating thread ...')
    thread = threading.Thread(target=thread_function,
                              args=(1,),
                              daemon=False)

    logging.info('Main: Starting thread ...')
    thread.start()

    logging.info('Main: Waiting for thread to complete ...')
    #thread.join()
   
    logging.info('Main: Program completed.')


if __name__ == '__main__':
    sys.exit(main())
