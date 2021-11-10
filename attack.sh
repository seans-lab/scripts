#!/bin/bash
echo "------------------------------"
echo "Starting security testing..."
echo "------------------------------"
echo ""
echo ""
echo "---------------------------------------------------------------------"
echo "Multiple decoding"
echo "Sending: curl -k 'http://www.example.com/three_decodin%2525252567.html'"
echo "---------------------------------------------------------------------"
curl -k "http://www.example.com/three_decodin%2525252567.html"
sleep 3
echo "-----------------------------------------------------------------------------"
echo "Apache Whitespace"
echo "Sending: curl -k 'http://www.example.com/tab_escaped%09.html'"
echo "-----------------------------------------------------------------------------"
curl -k "http://www.example.com/tab_escaped%09.html"
sleep 3
echo "-----------------------------------------------------------------------------"
echo "IIS Backslashes"
echo "Sending: curl -k 'http://www.example.com/regular%5cescaped_back.html'"
echo "-----------------------------------------------------------------------------"
curl -k "http://www.example.com/regular%5cescaped_back.html"
sleep 3
echo "-----------------------------------------------------------------------------"
echo "Apache Whitespace"
echo "Sending: curl -k 'http://www.example.com/carriage_return_escaped%0d.html?x=1&y=2'"
echo "-----------------------------------------------------------------------------"
curl -k "http://www.example.com/carriage_return_escaped%0d.html?x=1&y=2"
sleep 3
echo "-----------------------------------------------------------------------------"
echo "Cross site scripting"
echo "Sending: curl -k 'http://www.example.com/%25%25252541PPDATA%25'"
echo "-----------------------------------------------------------------------------"
curl -k "http://www.example.com/%25%25252541PPDATA%25"
echo “Now the same over https”
echo "------------------------------"
echo "Starting security testing..."
echo "------------------------------"
echo ""
echo ""
echo "---------------------------------------------------------------------"
echo "Multiple decoding"
echo "Sending: curl -k 'https://www.example.com/three_decodin%2525252567.html'"
echo "---------------------------------------------------------------------"
curl -k "https://www.example.com/three_decodin%2525252567.html"
sleep 3
echo "-----------------------------------------------------------------------------"
echo "Apache Whitespace"
echo "Sending: curl -k 'https://www.example.com/tab_escaped%09.html'"
echo "-----------------------------------------------------------------------------"
curl -k "https://www.example.com/tab_escaped%09.html"
sleep 3
echo "-----------------------------------------------------------------------------"
echo "IIS Backslashes"
echo "Sending: curl -k 'https://www.example.com/regular%5cescaped_back.html'"
echo "-----------------------------------------------------------------------------"
curl -k "https://www.example.com/regular%5cescaped_back.html"
sleep 3
echo "-----------------------------------------------------------------------------"
echo "Apache Whitespace"
echo "Sending: curl -k 'https://www.example.com/carriage_return_escaped%0d.html?x=1&y=2'"
echo "-----------------------------------------------------------------------------"
curl -k "https://www.example.com/carriage_return_escaped%0d.html?x=1&y=2"
sleep 3
echo "-----------------------------------------------------------------------------"
echo "Cross site scripting"
echo "Sending: curl -k 'https://www.example.com/%25%25252541PPDATA%25'"
echo "-----------------------------------------------------------------------------"
curl -k "https://www.example.com/%25%25252541PPDATA%25"
