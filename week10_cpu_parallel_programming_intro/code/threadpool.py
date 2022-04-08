#!/usr/bin/env python3
#
# https://realpython.com/intro-to-python-threading

import concurrent.futures
import logging
import threading
import time
import sys

def thread_function(name):
    logging.info('Thread %s: Starting task(s) ...', name)
    time.sleep(30)
    logging.info('Thread %s: Task(s) complete.', name)

def main():
    logging.basicConfig(format='%(asctime)s: %(message)s', 
                        level=logging.INFO,
                        datefmt='%H:%M:%S')

    with concurrent.futures.ThreadPoolExecutor(max_workers=3) as executor:
        executor.map(thread_function, range(3))

    logging.info('Main: Program completed.')
    


if __name__ == '__main__':
    sys.exit(main())
