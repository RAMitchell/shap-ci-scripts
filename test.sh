git clone --depth 1 $1 -b $2
cd shap
python setup.py develop
#pip install .[test]
pytest tests/explainers/test_gpu_tree.py