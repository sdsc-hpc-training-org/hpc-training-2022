#!/usr/bin/env python3
#
# https://realpython.com/intro-to-python-threading

import concurrent.futures
import logging
import threading
import time
import sys

class FakeDatabase:

    def __init__(self):
        self.value = 0

    def update(self, name):
        logging.info('Thread %s: Starting database update ...', name)
        local_copy = self.value
        local_copy += 1
        time.sleep(1)
        self.value = local_copy
        logging.info('Thread %s: Database updated complete.', name)


def main():
    logging.basicConfig(format='%(asctime)s: %(message)s', 
                        level=logging.INFO,
                        datefmt='%H:%M:%S')

    database = FakeDatabase()
    logging.info('Testing update. Starting value is %d.', database.value)
    with concurrent.futures.ThreadPoolExecutor(max_workers=2) as executor:
        for thread_num in range(2):
            executor.submit(database.update, thread_num)
    logging.info('Test complete. Ending value is %d.', database.value)

    logging.info('Main: Program completed.')


if __name__ == '__main__':
    sys.exit(main())
