# It will be here while it hasn't changed https://github.com/fannheyward/coc-pyright/blob/e5a1dca4bf4877b7824c4575a8cf21ae831b6842/src/index.ts#L70
mkdir -p $EXTENSIONS/node_modules/coc-pyright/node_modules
ln -s $EXTENSIONS/node_modules/pyright $EXTENSIONS/node_modules/coc-pyright/node_modules/pyright
###################################################################################################################################################

if [ -f $custom_script_path  ]; then
	echo "Running custom user script"
	bash $custom_script_path
else
	echo "Custom script is not defined, running default 'pip install'"
	pip install
fi
