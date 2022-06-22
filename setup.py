import os

from setuptools import setup, find_packages

Install_Requirement = ['requests','mechanize','fake_useragent',"google_speech"]
Name = "my z tools"
Author = "Speedrun || polygon"

setup(
        author=Author,
        install_requires=Install_Requirement
        )
