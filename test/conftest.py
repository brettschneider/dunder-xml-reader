"""pytest fixtures shared among modules"""
from pathlib import Path

import pytest


@pytest.fixture
def sample_xml_text():
    with open(Path(__file__).parents[0] / 'sample_cxml.xml') as infile:
        return infile.read()


@pytest.fixture
def sample_soap_text():
    with open(Path(__file__).parents[0] / 'sample_soap.xml') as infile:
        return infile.read()
