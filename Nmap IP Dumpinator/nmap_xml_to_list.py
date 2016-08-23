#!/usr/bin/env python
import sys
import xml.etree.ElementTree as ET

def quit_with_error(reason):
    print reason
    sys.exit(1)

def main():
    if len(sys.argv) < 3:
        quit_with_error("Usage: nmap_xml_to_list <input.xml> <output.txt>")
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    try:
        xml = ET.parse(input_file).getroot()
        hosts = xml.findall("host")
        if len(hosts) == 0:
            quit_with_error("No hosts found in input file.")
        with open(output_file, "wb") as output_file:
            for host in hosts:
                output_file.write(host[1].attrib["addr"] + "\n")
            output_file.close()
    except IOError:
        quit_with_error("Unable to access input file.")
    except ET.ParseError:
        quit_with_error("Unable to parse input file.")
    except Exception, e:
        print "Unhandled Exception: %s" % e.__class__.__name__
        print e

if __name__ == "__main__":
    main()
