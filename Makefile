test: test-py2 test-py3

test-py2: edit-server-local.xml
	0install run --command=test --version-for http://repo.roscidus.com/python/python '2..!3' edit-server-local.xml

test-py3: edit-server-local.xml
	0install run --command=test --version-for http://repo.roscidus.com/python/python '3..!4' edit-server-local.xml

edit-server-local.xml: edit-server.xml.template
	0local edit-server.xml.template

.PHONY: 0
