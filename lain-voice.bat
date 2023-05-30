@echo off
set "current_dir=%CD%"

set SCRIPT_PATH=%current_dir%\so-vits-svc-4.0\tools\lain_gradio.py

set MODELS_PATH=%current_dir%\models
set MODEL_PATH=%MODELS_PATH%\G_256800_infer.pth
set CONFIG_PATH=%MODELS_PATH%\config.json
set CLUSTER_MODEL_PATH=%MODELS_PATH%\kmeans_10000.pt
set HUBERT_MODEL_PATH=%MODELS_PATH%\checkpoint_best_legacy_500.pt

set VENV_PATH=%current_dir%\venv
set "PYTHON_HOME=%VENV_PATH%\python"
set "PATH=%PYTHON_HOME%;%PATH%"

set "PATH=%VENV%/bin;%PATH%"

echo starting, please wait ...

%PYTHON_HOME%\python.exe %SCRIPT_PATH% ^
  --model_path %MODEL_PATH% ^
  --config_path %CONFIG_PATH% ^
  --cluster_model_path %CLUSTER_MODEL_PATH% ^
  --hubert_model_path %HUBERT_MODEL_PATH% ^
  --inbrowser 
