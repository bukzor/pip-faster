#!/usr/bin/env python
from __future__ import absolute_import
from __future__ import print_function
from __future__ import unicode_literals

from setuptools import setup


def main():
    setup(
        name='pip-faster',
        version='0',
        description='Quickly and exactly synchronize a virtualenv with a requirements.txt',
        url='https://github.com/Yelp/pip-faster',
        author='Buck Evan',
        author_email='buck@yelp.com',
        platforms='all',
        license='MIT',
        classifiers=[
        ],
        install_requires=[
        ],
        entry_points={
        },
        keywords=[],
    )  # pragma: no cover: covered by tox

if __name__ == '__main__':
    exit(main())
