{% from "tomcat/map.jinja" import tomcat with context %}

/etc/{{ tomcat.name }}{{ tomcat.version }}/server.xml::
    file.managed:
        - source: salt://tomcat/files/server.xml
        - user: {{ tomcat.name }}{{ tomcat.version }}
        - group: {{ tomcat.name }}{{ tomcat.version }}
        - mode: 644
