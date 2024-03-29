"""\
Tools for managing IDR data.
"""

from setuptools import setup


NAME = "idr-utils"
DESCRIPTION = __doc__
URL = "https://github.com/IDR/idr-utils"
CLASSIFIERS = [
    "Programming Language :: Python",
    "Topic :: Scientific/Engineering :: Bio-Informatics",
    "Intended Audience :: Science/Research",
    "License :: OSI Approved :: BSD License",
]


setup(
    name=NAME,
    description=DESCRIPTION,
    url=URL,
    version="0.2.dev1",
    classifiers=CLASSIFIERS,
    packages=["pyidr"],
    python_requires='>=3',
    install_requires=[
        "future",
        "PyYAML",
        "pandas",
        "flake8",
        "yamllint"
    ]
)
