### Introduction

While developing [Cartriage](https://github.com/nexuist/cartriage), I needed a way to test it using all the printers on the network. To find these printers, I used [nmap](https://nmap.org/) (a network scanner). `nmap` features an option to export results as XML ([-oX](https://nmap.org/book/output-formats-xml-output.html)) so I used that in conjunction with this script to generate a text file with each line containing the IP address of a printer.

##### Example Output

```
10.160.168.1
10.160.168.25
10.160.168.90
```
Etcetera...

### Concepts Used

* Understanding the XML library in Python (I had never used it before)
* Basic knowledge of the nmap tool and its features
