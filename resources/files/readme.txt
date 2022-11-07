note.txt will be in the same directory as this file.




[ DOCKER ]



** commands to build image **

docker run -t random .



** commands to run container **

1. run without volume
docker run -dp 4000:4000 random

2. run with volume named 'random'
docker run -dp 4000:4000 -v random:/app/resources/files random

3. run with volume in the path you specify
docker run -dp 4000:4000 -v "C:/Users/YourAccount/Desktop/your-project-name/resources/files:/app/resources/files" random
