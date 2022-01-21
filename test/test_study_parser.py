#!/usr/bin/env python

from pyidr.study_parser import validate_doi
import pytest


class TestDOI(object):

    VALID_DOIS = [
      '10.1083/jcb.20110809',
      '10.1016/j.cell.2008.12.041',
      '10.17867/10000108',
      '10.1093/gigascience/giw014'
    ]

    def test_missing_key(self):
        assert validate_doi(None) is None

    @pytest.mark.parametrize('doi', (
        'https://doi.org/10.17867/10000134',
        'https://dx.doi.org/10.17867/10000134',
        'http://doi.org/10.17867/10000134',
        'http://dx.doi.org/10.17867/10000134'))
    def test_doi_url_prefixes(self, doi):
        assert validate_doi(doi) == '10.17867/10000134'

    def test_invalid_doi_link(self):
        with pytest.raises(Exception):
            validate_doi('doi.org/10.17867/10000134')

    @pytest.mark.parametrize('doi', VALID_DOIS)
    def test_valid_dois(self, doi):
        assert validate_doi(doi) == doi
        assert validate_doi('https://doi.org/%s' % doi) == doi
