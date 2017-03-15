<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [LDC-XML-to-Brat converter](#ldc-xml-to-brat-converter)
- [Requirements of the software](#requirements-of-the-software)
- [How to run the software](#how-to-run-the-software)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## LDC-XML-to-Brat converter
This software converts LDC's XML format for the [TAC KBP 2015 Event Nugget task](http://cairo.lti.cs.cmu.edu/kbp/2015/event/) to the [Brat format](http://brat.nlplab.org/standoff.html).  More specifically, it converts LDC's event nuggets and coreferences to events and coreference links that can be viewed via the Brat web interface.  Brat annotation configurations for output are available at directory `src/main/resources/`.

## Requirements of the software
The software requires Java 1.8 and [Annobase](http://junaraki.net/software/annobase) 1.0.1.  See `pom.xml` for other dependencies.

## How to run the software
You can see its usage with the following command:
```
$ java -jar target/converter-1.0.3-jar-with-dependencies.jar -h
Option                            Description              
------                            -----------              
-a <annotation dir>               annotation directory       
--ae <annotation file extension>  annotation file extension  
-d                                whether to detag text      
-h                                help                       
-i <input mode>                   input mode ("event-nugget")
-o <output dir>                   output directory           
-t <text dir>                     text directory             
--te <text file extension>        text file extension        
```
