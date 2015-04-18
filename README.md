# mongo_replicaset

This project is a final environment created by Vagrant and Puppet for MongoDB cluster. 
Will be create 3 machines, each one contains an instance of MongoDB.

Machines are arranged as follows:

``mongo0.replica - 192.168.33.20``<br/>
``mongo1.replica - 192.168.33.21``<br/>
``mongo2.replica - 192.168.33.22``<br/>

## Dependencies

Depends of a Vagrant plugin called "librarian-puppet".

To install use:

``vagrant plugin install vagrant-librarian-puppet``

## Running

``vagrant up``<br/>

## Configuring mongo replicasets

``vagrant ssh db1``<br/>
``mongo``<br/>
``rs.initiate()``<br/>
``rs.conf()``<br/>
``rs.add("mongo1.replica")``<br/>
``rs.add("mongo2.replica")`` 

Look at image below to see everything working.

![alt tag](https://raw.githubusercontent.com/wenderjean/mongo_replicaset/master/Print.png)
