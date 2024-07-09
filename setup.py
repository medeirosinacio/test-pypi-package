from setuptools import setup

with open("README.md", "r") as fh:
    readme = fh.read()

setup(
    ## Not edited. Release is generated automatically by GitHub Actions workflow from Release Publisher
    version='0.3.3',
    ######################################################################
    name='dumppackage',
    url='https://github.com/medeirosinacio/test-pypi-package',
    license='MIT License',
    author='Douglas Medeiros',
    long_description=readme,
    long_description_content_type="text/markdown",
    author_email='ola@dump.tec.br',
    keywords='package',
    description=u'Example of a package to be published in PyPI',
    packages=['dumppackage'],
    install_requires=['numpy'],
 )
