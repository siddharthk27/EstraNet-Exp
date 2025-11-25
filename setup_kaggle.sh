#!/bin/bash
# Setup script for Kaggle (Python 3.11) compatibility
# This fixes the NumPy/JAX compatibility issue

echo "Upgrading NumPy to 1.24+ (required for JAX compatibility)..."
pip install --upgrade --force-reinstall "numpy>=1.24.0,<2.0.0"

echo "Installing other dependencies..."
pip install --upgrade absl-py scipy h5py

echo "Installing TensorFlow 2.15+ (Python 3.11 compatible)..."
pip install --upgrade "tensorflow>=2.15.0,<2.17.0"

echo "Verifying installation..."
python -c "import numpy as np; print(f'NumPy version: {np.__version__}'); assert hasattr(np, 'dtypes'), 'NumPy dtypes module missing!'; print('✓ NumPy dtypes module available')"
python -c "import tensorflow as tf; print(f'TensorFlow version: {tf.__version__}'); print('✓ TensorFlow imported successfully')"

echo "Setup complete!"


