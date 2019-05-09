run:
	python PyFuncover.py

test_upload:
	- rm -r dist build *.egg-info
	python setup.py sdist
	twine upload --repository testpypi dist/*

test_install:
	pip install --index-url https://test.pypi.org/simple/ pyfuncover --no-cache-dir

install-releaser:
	pip install zest.releaser
release:
	fullrelease
