# CQELS+: Boosting performance of Linked Stream Processing for the CQELS engine.
CQELS+ is a Linked Stream Processing engine which is extended from the CQELS engine(http://cqels.googlecode.com/). CQELS+ is able to handle
a high number of concurrent continous queries. We evaluated its performance in comparison with the CQELS engine on the Streaming RDF/SPARQL Benchmark(https://www.w3.org/wiki/SRBench) over two aspects: The throughput(the number of input data items processed in a time unit) and the memory consumption. 
##Prerequisite
* Java 1.7

##To run the experiementations
* Download all folders
* Execute .sh scripts. In these scripts, there are the java command lines to start the corresponding jars files in the folders. Replace the final parameter with the folder in your machine. This folder is the location to store results of the experimentation. For example, the command: java -Xms2G -Xmx12G -cp ./rcqels.jar org.deri.cqels.test.masterthesisexp.MC4DifferentQueries $f /media/Windows/ThesisFactory/output/R_CQELS/MC4DiffQueries/ stores the expriment results to the folder .../MC4DiffQueries/. You have to replace with with the path in your machine.
## Execution details
* In this folder, we have 2 jar files. rcqels.jar and cqelsplus.jar. The first one is the executable file of the CQELS engine. Similarly, the second one is for the CQELS+ engine.
* We alsp have 4 different tests corresponding to 4 different .sh files in this folder. The cqels4samqueries.sh and the cqels4diffqueries.sh are files to execute the CQELS engine. The first file is aimed to test the the throughput and the memory consumption with the same query type while the second one test targets to evaluate those metrics with different query types. In similarity, two other files: cqelsplus4samequeries.sh and cqelsplus4diffqueries.sh have the same purposes but these are for CQELS+ engine.
* The format of the java command in 4 script files is as follow: java -Xms{Min} -Xmx{Max} -cp {engine}.jar {mainclassfile} {parameter file location} {experiment results location}. In this command, -Xms{Min} and -Xmx{Max} are for the minimum and maximum spaces for Java Virtual Machine, respectively. The {engine}.jar is for rcqels for cqelsplus jar files. The {mainclassfile} is the main class to start engines. The {parameter file location} contains parameter information configured in the engine. The {experimentation results location} has been mentioned above.
