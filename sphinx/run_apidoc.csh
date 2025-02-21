mv ../conf.py .
rm ../modules.rst
touch ../utilities/__init__.py
sphinx-apidoc -o .. ..
mv conf.py ..
rm ../utilities/__init__.py
rm -r ../utilities/__pycache__