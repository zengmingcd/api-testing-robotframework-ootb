testfile=$1
echo -e "Running testcase in file: $testfile"
env=$2
if [ -z "${env}" ]
then env="prod"
fi
echo -e "Running testcase in enviroment: ${env}"
robot --argumentfile runner_arguments.txt --variable ENV:${env} ../../${testfile}