# -*- encoding: utf-8 -*-
# -*- mamba-file-type: mamba-controller -*-
# Copyright (c) ${year} - ${author} <${author_email}>

"""
.. controller:: ${controller_name}
    :platform: ${platforms}
    :synopsis: ${synopsis}

.. controllerauthor:: ${author} <${author_email}>
"""

from zope.interface import implements

from mamba.web.response import Ok
from mamba.core import interfaces
from mamba.application import route
from mamba.application.controller import Controller, ControllerProvider


class ${controller_class}(Controller, ControllerProvider):
    """
    ${synopsis}
    """

    implements(interfaces.IController)
    name = '${controller_class}'
    loaded = False
    __route__ = '${register_path}'

    def __init__(self):
        """
        Put your initializarion code here
        """
        super(${controller_class}, self).__init__()

    @route('/')
    def root(self, request, **kwargs):
        return Ok('I am the ${controller_class}, hello world!')