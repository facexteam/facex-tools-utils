apt-get install software-properties-common swig 
add-apt-repository ppa:webupd8team/java 
apt-get update 
apt-get install oracle-java8-installer 
echo "deb http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list 
curl https://storage.googleapis.com/bazel-apt/doc/apt-key.pub.gpg | sudo apt-key add - 
apt-get update 
apt-get install bazel