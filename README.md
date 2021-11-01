# blender-companion

## Installation
Install dependencies from the requirements file
`pip install -r requirements.txt`

Run setup build
`python setup.py develop`

## Run demo
Spin up search engine server
`./up_search_bing.sh`  
!['Bing search engine'](assets/search_engine.png)

Run interactive demo
`./run_demo.sh`  
!['Interactive chat demo'](assets/interactive_demo.png)

You may monitor the hardware usage i.e. CPU, Memory, Accelerators/GPU through `nvitop --monitor auto` or `nvidia-smi`  
!['Monitor usage'](assets/monitor.png)
