audit create session by SIP_AP whenever not successful;


NOAUDIT CREATE SESSION BY SIP_W;
NOAUDIT CREATE SESSION BY SIP_IBS;
NOAUDIT SESSION BY SIP_W;
NOAUDIT SESSION BY SIP_IBS;
audit create session by SIP_W whenever not successful;
audit create session by SIP_IBS whenever not successful;
/