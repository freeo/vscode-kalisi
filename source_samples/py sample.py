#!python3

"""Unittest main program"""

import sys
import os

MAIN_EXAMPLES = """\ Examples:
  %(prog)s test_module               - run tests from test_module
"""

class Colorscheme(object):
    '''Showing off kalisi light syntax colors.

    error function highlighting is done by an alternative python highlighting
    syntax file:
    https://github.com/klen/python-mode
    '''
    def __init__(self):
        f = False
        none = None
        __name__ = "colorscheme tester"

    def syntax(self):
        # Lots of random stuff
        # And some text to show off commenting color
        # Notice the MatchParen color below (Green)
        n = 12345
        f = 1.608
        tester = 'testing'
        "Testing %s testing %d " % (tester, 5.5)
        "test {0} test {abd} test".format("test", abd="test")
        d = {"ab":"cd", "ef":"gh"}
        prime = [2,3,5,7,11,13,17,19,23]
        try:
            r = [x ** 2 for x in prime]
        except KeyError:
            pass
        if r is not None:
            if 4 in r and not 2 in r:
                return 1
            else:
                return 0

    def error(self):
        # Just a comment
        blank =
        # another comment
        number = 0xg

cs = new Colorscheme()

def _convert_name(name):
    # on Linux / Mac OS X 'foo.PY' is not importable, but on
    # Windows it is. Simpler to do a case insensitive match
    # a better check would be to check that the name is a
    # valid Python module name.
    if os.path.isfile(name) and name.lower().endswith('.py'):
        if os.path.isabs(name):
            rel_path = os.path.relpath(name, os.getcwd())
            if os.path.isabs(rel_path) or rel_path.startswith(os.pardir):
                return name
            name = rel_path
        # on Windows both '\' and '/' are used as path
        # separators. Better to replace both than rely on os.path.sep
        return name[:-3].replace('\\', '.').replace('/', '.')
    return name



class TestProgram(object):
    '''A command-line program that runs a set of tests; this is primarily
       for making test modules conveniently executable.

       >>> [factorial(long(n)) for n in range(6)]
       [1, 1, 2, 6, 24, 120]
    '''
    # Default Syntax Groups
    pythonEscape = "\a abc \n \f \b\t"

    # defaults for testing
    module=None
    verbosity = 1
    failfast = catchbreak = buffer = progName = warnings = None
    _discovery_parser = None

    def __init__(self, module='__main__', defaultTest=None, argv=None,
                    testRunner=None, testLoader=loader.defaultTestLoader,
                    exit=True, verbosity=1, failfast=None, catchbreak=None,
                    buffer=None, warnings=None):
        if isinstance(module, str):
            self.module = __import__(module)
            for part in module.split('.')[1:]:
                self.module = getattr(self.module, part)
        else:
            self.module = module
        if argv is None:
            argv = sys.argv

        self.exit = exit
        self.failfast = failfast
        self.catchbreak = catchbreak
        self.verbosity = verbosity
        self.buffer = buffer
        __name__
        __file__
        if warnings is None and not sys.warnoptions:
            # even if DreprecationWarnings are ignored by default
            # print them anyway unless other warnings settings are
            # specified by the warnings arg or the -W python flag
            self.warnings = 'default'
        else:
            # here self.warnings is set either to the value passed
            # to the warnings args or to None.
            # If the user didn't pass a value self.warnings will
            # be None. This means that the behavior is unchanged
            # and depends on the values passed to -W.
            self.warnings = warnings
        self.defaultTest = defaultTest
        self.testRunner = testRunner
        self.testLoader = testLoader
        self.progName = os.path.basename(argv[0])
        self.parseArgs(argv)
        self.runTests()

    def usageExit(self, msg=None):
        if msg:
            print(msg)
        if self._discovery_parser is None:
            self._initArgParsers()
        self._print_help()
        sys.exit(2)

    def _print_help(self, *args, **kwargs):
        if self.module is None:
            print(self._main_parser.format_help())
            print(MAIN_EXAMPLES % {'prog': self.progName})
            self._discovery_parser.print_help()
        else:
            print(self._main_parser.format_help())
            print(MODULE_EXAMPLES % {'prog': self.progName})

    def parseArgs(self, argv):
        self._initArgParsers()
        if self.module is None:
            if len(argv) > 1 and argv[1].lower() == 'discover':
                self._do_discovery(argv[2:])
                return
            self._main_parser.parse_args(argv[1:], self)
            if not self.tests:
                # this allows "python -m unittest -v" to still work for
                # test discovery.
                self._do_discovery([])
                return
        else:
            self._main_parser.parse_args(argv[1:], self)

        if self.tests:
            self.testNames = _convert_names(self.tests)
            if __name__ == '__main__':
                # to support python -m unittest ...
                self.module = None
        elif self.defaultTest is None:
            # createTests will load tests from self.module
            self.testNames = None
        elif isinstance(self.defaultTest, str):
            self.testNames = (self.defaultTest,)
        else:
            self.testNames = list(self.defaultTest)
        self.createTests()

    def createTests(self):
        if self.testNames is None:
            self.test = self.testLoader.loadTestsFromModule(self.module)
        else:
            self.test = self.testLoader.loadTestsFromNames(self.testNames,
                                                           self.module)

    def _initArgParsers(self):
        parent_parser = self._getParentArgParser()
        self._main_parser = self._getMainArgParser(parent_parser)
        self._discovery_parser = self._getDiscoveryArgParser(parent_parser)

    def _getParentArgParser(self):
        parser = argparse.ArgumentParser(add_help=False)

        parser.add_argument('-v', '--verbose', dest='verbosity',
                            action='store_const', const=2,
                            help='Verbose output')
        parser.add_argument('-q', '--quiet', dest='verbosity',
                            action='store_const', const=0,
                            help='Quiet output')

        if self.failfast is None:
            parser.add_argument('-f', '--failfast', dest='failfast',
                                action='store_true',
                                help='Stop on first fail or error')
            self.failfast = False
        if self.catchbreak is None:
            parser.add_argument('-c', '--catch', dest='catchbreak',
                                action='store_true',
                                help='Catch ctrl-C and display results so far')
            self.catchbreak = False
        if self.buffer is None:
            parser.add_argument('-b', '--buffer', dest='buffer',
                                action='store_true',
                                help='Buffer stdout and stderr during tests')
            self.buffer = False

        return parser

    def _getMainArgParser(self, parent):
        parser = argparse.ArgumentParser(parents=[parent])
        parser.prog = self.progName
        parser.print_help = self._print_help

        parser.add_argument('tests', nargs='*',
                            help='a list of any number of test modules, '
                            'classes and test methods.')

        return parser

    def _getDiscoveryArgParser(self, parent):
        parser = argparse.ArgumentParser(parents=[parent])
        parser.prog = '%s discover' % self.progName
        parser.epilog = ('For test discovery all test modules must be '
                         'importable from the top level directory of the '
                         'project.')

        parser.add_argument('-s', '--start-directory', dest='start',
                            help="Directory to start discovery ('.' default)")
        parser.add_argument('-p', '--pattern', dest='pattern',
                            help="Pattern to match tests ('test*.py' default)")
        parser.add_argument('-t', '--top-level-directory', dest='top',
                            help='Top level directory of project (defaults to '
                                 'start directory)')
        for arg in ('start', 'pattern', 'top'):
            parser.add_argument(arg, nargs='?',
                                default=argparse.SUPPRESS,
                                help=argparse.SUPPRESS)

        return parser

    def _do_discovery(self, argv, Loader=None):
        self.start = '.'
        self.pattern = 'test*.py'
        self.top = None
        if argv is not None:
            # handle command line args for test discovery
            if self._discovery_parser is None:
                # for testing
                self._initArgParsers()
            self._discovery_parser.parse_args(argv, self)

        loader = self.testLoader if Loader is None else Loader()
        self.test = loader.discover(self.start, self.pattern, self.top)

    def runTests(self):
        if self.catchbreak:
            installHandler()
        if self.testRunner is None:
            self.testRunner = runner.TextTestRunner
        if isinstance(self.testRunner, type):
            try:
                testRunner = self.testRunner(verbosity=self.verbosity,
                                             failfast=self.failfast,
                                             buffer=self.buffer,
                                             warnings=self.warnings)
            except TypeError:
                # didn't accept the verbosity, buffer or failfast arguments
                testRunner = self.testRunner()
        else:
            # it is assumed to be a TestRunner instance
            testRunner = self.testRunner
        self.result = testRunner.run(self.test)
        if self.exit:
            sys.exit(not self.result.wasSuccessful())

main = TestProgram
def shitter():
    return None

@shitter
def main():
    print("hallo")
    import re
    re.search(

if __name__ == "__main__":
    main()
