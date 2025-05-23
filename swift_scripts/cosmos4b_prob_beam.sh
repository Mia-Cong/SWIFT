CUDA_VISIBLE_DEVICES=0 CUDA_HOME=$CONDA_PREFIX PYTHONPATH=$(pwd) python cosmos_predict1/autoregressive/inference/base.py \
    --checkpoint_dir checkpoints \
    --ar_model_dir Cosmos-Predict1-4B \
    --batch_input_path assets/autoregressive/autonomous/base.jsonl \
    --top_p 0.8 \
    --temperature 1.05 \
    --offload_guardrail_models \
    --offload_diffusion_decoder \
    --offload_ar_model \
    --disable_guardrail \
    --tts_mode prob_beam-4 \
    --video_save_folder wfm_tts/cosmos_4b_prob_beam-4
