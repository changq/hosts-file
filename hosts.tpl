##
# Host Database
#
# localhost is used to configure the loopback interface
# when the system is booting.  Do not change this entry.
##
127.0.0.1	localhost
255.255.255.255	broadcasthost
::1             localhost 
fe80::1%lo0	localhost
<%
google = [
'www',
'apis',
'mail',
'accounts',
'plus',
'voice',
'4.client-channel',
'talkgadget',
'research',
'finance',
'maps',
'client2',
'code',
'security',
'mt0',
'mt1',
]
sites = [
'ssl.gstatic.com',
'www.gstatic.com',
'maps.gstatic.com',
'ajax.googleapis.com',
'fonts.googleapis.com',
'mail-attachment.googleusercontent.com',
'chromium.googlesource.com',
'boringssl.googlesource.com',
'pdfium.googlesource.com'
]
ip = '173.194.121.85'
%>\
% for site in [ elem.strip() for elem in sites ]:
${ip} ${site}
% endfor
% for prefix in google:
${ip} ${prefix}.google.com
% endfor
% for i in xrange(1,7):
${ip} lh${i}.googleusercontent.com
% endfor
% for i in xrange(4):
${ip} encrypted-tbn${i}.gstatic.com
% endfor

