-- SOC_Lakehouse Spark SQL Setup Script
-- SME Bank Hackathon 2026

CREATE TABLE IF NOT EXISTS soc_alerts (
    alert_id STRING, source_ip STRING, source_country STRING,
    destination_ip STRING, threat_type STRING, threat_category STRING,
    risk_score DECIMAL(5,1), severity STRING, timestamp TIMESTAMP,
    status STRING, username STRING, department STRING, hostname STRING,
    bytes_transferred BIGINT, login_count INT, failed_logins INT,
    mitre_technique STRING, mitre_id STRING, source_system STRING,
    description STRING, analyst_notes STRING, resolved_by STRING,
    resolved_at TIMESTAMP, created_at TIMESTAMP, updated_at TIMESTAMP
) USING DELTA;

INSERT INTO soc_alerts VALUES
('QR-8294','203.0.113.45','Kazakhstan','10.1.1.25','Brute Force Login','Credential Attack',93,'HIGH',TIMESTAMP '2026-10-04 08:30:00','New','john.doe','Operations','WKSTN-OPS-01',0,0,47,'Brute Force','T1110','QRadar','47 failed SSH logins from Kazakhstan IP in 5 minutes',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9912','198.51.100.12','Russia','10.1.2.10','Ransomware Behavior','Malware',97,'CRITICAL',TIMESTAMP '2026-10-04 07:15:00','New','service-acct','IT','SRV-DC-01',0,0,0,'Data Encrypted for Impact','T1486','CortexXDR','Shadow copy deletion detected followed by mass file encryption',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8290','192.0.2.78','Thailand','10.1.3.5','Data Exfiltration','Data Theft',81,'HIGH',TIMESTAMP '2026-10-04 06:45:00','In Review','jane.smith','Finance','WKSTN-FIN-03',3145728000,12,0,'Exfiltration Over Web Service','T1567','QRadar','3GB upload to unknown cloud storage at 2AM',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9908','10.1.5.20','Thailand','8.8.8.8','Suspicious DNS','Command & Control',67,'MEDIUM',TIMESTAMP '2026-10-04 06:00:00','In Review','bob.chen','Engineering','WKSTN-ENG-07',0,0,0,'Application Layer Protocol DNS','T1071.004','CortexXDR','DNS requests to known malware C2 domain (dga-pattern)',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8285','172.16.0.45','China','10.1.1.1','Privilege Escalation','Lateral Movement',88,'HIGH',TIMESTAMP '2026-10-04 05:30:00','New','admin-temp','IT','SRV-APP-02',0,0,0,'Valid Accounts','T1078','QRadar','Temp admin account used outside business hours from new IP',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9901','10.1.4.15','Thailand','10.1.1.10','Lateral Movement','Lateral Movement',74,'HIGH',TIMESTAMP '2026-10-04 04:15:00','In Review','frank.lee','Operations','WKSTN-OPS-08',0,0,3,'Remote Services','T1021','CortexXDR','PsExec detected connecting to 5 internal hosts sequentially',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8280','185.220.101.7','Germany','10.1.2.20','Port Scan','Reconnaissance',45,'MEDIUM',TIMESTAMP '2026-10-04 03:00:00','Resolved',NULL,NULL,NULL,0,0,0,'Network Service Discovery','T1046','QRadar','SYN scan from Tor exit node - 1024 ports in 30 seconds',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9895','10.1.3.8','Thailand','104.26.10.10','Suspicious Download','Malware',62,'MEDIUM',TIMESTAMP '2026-10-04 02:30:00','In Review','mary.wong','HR','WKSTN-HR-02',52428800,1,0,'Ingress Tool Transfer','T1105','CortexXDR','Download of .exe from newly registered domain (24h old)',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8275','10.1.6.30','Thailand','10.1.1.50','Insider Threat','Data Theft',85,'HIGH',TIMESTAMP '2026-10-03 23:45:00','In Review','peter.tan','Finance','WKSTN-FIN-05',1073741824,1,0,'Data from Local System','T1005','QRadar','1GB of financial data accessed and copied to USB after hours',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9890','203.0.113.99','Brazil','10.1.2.5','Phishing - Macro','Phishing',71,'HIGH',TIMESTAMP '2026-10-03 22:00:00','Resolved','lisa.park','HR','WKSTN-HR-04',0,1,0,'Spearphishing Attachment','T1566.001','CortexXDR','Malicious Office macro executed - sandbox detonation confirmed',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8270','192.0.2.15','Iran','10.1.1.25','SSH Brute Force','Credential Attack',79,'HIGH',TIMESTAMP '2026-10-03 21:15:00','Resolved',NULL,NULL,'SRV-WEB-01',0,0,234,'Brute Force','T1110.003','QRadar','234 SSH failed attempts from Iranian IP - account locked',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9885','10.1.7.12','Thailand','10.1.9.50','Suspicious Process','Malware',55,'MEDIUM',TIMESTAMP '2026-10-03 20:30:00','Resolved','david.kim','Engineering','WKSTN-ENG-12',0,1,0,'Command and Scripting Interpreter','T1059.001','CortexXDR','PowerShell with encoded command spawned from Word process',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8265','198.51.100.55','USA','10.1.2.15','Failed VPN','Credential Attack',38,'LOW',TIMESTAMP '2026-10-03 19:45:00','Resolved','tom.wilson','Sales',NULL,0,0,8,'Valid Accounts','T1078','QRadar','8 failed VPN logins - user confirmed forgot password',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9880','10.1.4.22','Thailand','10.1.1.30','Abnormal Login Time','Anomaly',49,'MEDIUM',TIMESTAMP '2026-10-03 19:00:00','False Positive','sarah.johnson','Finance','WKSTN-FIN-08',0,1,0,'Valid Accounts','T1078','CortexXDR','Login at 11PM - confirmed user was working overtime',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8260','172.16.5.10','Thailand','10.1.3.20','Malware - Trojan','Malware',91,'CRITICAL',TIMESTAMP '2026-10-03 18:15:00','New',NULL,NULL,'SRV-FILE-01',0,0,0,'User Execution','T1204','QRadar','Trojan.GenericKD detected in file server - spreading attempt',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9875','203.0.113.200','North Korea','10.1.1.1','APT Indicator','APT',95,'CRITICAL',TIMESTAMP '2026-10-03 17:30:00','New',NULL,NULL,'SRV-DNS-01',0,0,0,'Exploit Public-Facing Application','T1190','CortexXDR','IOC match: NK APT group C2 server communication pattern',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8255','10.1.8.5','Thailand','8.8.4.4','Crypto Mining','Resource Hijack',60,'MEDIUM',TIMESTAMP '2026-10-03 16:45:00','In Review','alex.wong','Engineering','WKSTN-ENG-20',0,0,0,'Resource Hijacking','T1496','QRadar','High CPU + network to known mining pools from dev workstation',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9870','192.168.100.50','Thailand','10.1.2.50','LSASS Memory Dump','Credential Access',83,'HIGH',TIMESTAMP '2026-10-03 16:00:00','New',NULL,NULL,'SRV-AD-01',0,0,0,'OS Credential Dumping','T1003.001','CortexXDR','Mimikatz-like LSASS memory access pattern detected',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8250','198.51.100.77','Vietnam','10.1.1.100','Web Application Attack','Exploitation',76,'HIGH',TIMESTAMP '2026-10-03 15:15:00','Resolved',NULL,NULL,'SRV-WEB-02',0,0,0,'Exploit Public-Facing Application','T1190','QRadar','SQL injection attempt on banking portal login page',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9865','10.1.5.25','Thailand','10.1.6.30','Data Staging','Data Theft',58,'MEDIUM',TIMESTAMP '2026-10-03 14:30:00','In Review','michael.brown','Finance','WKSTN-FIN-10',524288000,1,0,'Archive Collected Data','T1560','CortexXDR','500MB compressed archive created in temp folder - unusual',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8245','203.0.113.150','Ukraine','10.1.2.30','RDP Brute Force','Credential Attack',87,'HIGH',TIMESTAMP '2026-10-03 13:45:00','New',NULL,NULL,'WKSTN-OPS-15',0,0,89,'Remote Desktop Protocol','T1021.001','QRadar','89 failed RDP attempts on Operations workstation',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9860','10.1.3.15','Thailand','10.1.1.50','Unauthorized Access','Access Violation',64,'MEDIUM',TIMESTAMP '2026-10-03 13:00:00','Resolved','jenny.liu','HR','WKSTN-HR-06',0,1,0,'Valid Accounts','T1078','CortexXDR','HR user accessed confidential payroll server - not authorized',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8240','185.220.101.15','France','10.1.4.5','Network Scan','Reconnaissance',41,'LOW',TIMESTAMP '2026-10-03 12:15:00','False Positive',NULL,NULL,NULL,0,0,0,'Network Service Discovery','T1046','QRadar','Scheduled vulnerability scan from approved scanner - FP',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9855','10.1.9.8','Thailand','10.1.2.20','Pass-the-Hash','Lateral Movement',89,'HIGH',TIMESTAMP '2026-10-03 11:30:00','New',NULL,NULL,'WKSTN-IT-03',0,0,0,'Pass the Hash','T1550.002','CortexXDR','NTLM hash reuse detected - lateral movement to Domain Controller',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8235','192.0.2.200','China','10.1.1.80','Email Phishing','Phishing',53,'MEDIUM',TIMESTAMP '2026-10-03 10:45:00','Resolved',NULL,NULL,'MAIL-GW-01',0,0,0,'Spearphishing Link','T1566.002','QRadar','Phishing URL in email - link blocked by gateway filter',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9850','10.1.6.18','Thailand','external','Abnormal Download','Data Theft',70,'HIGH',TIMESTAMP '2026-10-03 10:00:00','In Review','chris.ng','Finance','WKSTN-FIN-15',2147483648,1,0,'Exfiltration Over Alternative Protocol','T1048','CortexXDR','2GB download from internal SharePoint to personal cloud storage',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8230','172.16.10.5','Thailand','8.8.8.8','DNS Tunneling','Command & Control',77,'HIGH',TIMESTAMP '2026-10-03 09:15:00','New',NULL,NULL,'WKSTN-ENG-25',0,0,0,'Protocol Tunneling','T1572','QRadar','High-entropy DNS queries with unusually large TXT records',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9845','203.0.113.88','Indonesia','10.1.1.10','DDoS Source','DDoS',35,'LOW',TIMESTAMP '2026-10-03 08:30:00','Resolved',NULL,NULL,NULL,0,0,0,'Network Denial of Service','T1498','CortexXDR','Amplification attack source - low impact, filtered',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('QR-8225','10.1.2.45','Thailand','10.1.1.25','Unauthorized Script','Malware',66,'MEDIUM',TIMESTAMP '2026-10-03 07:45:00','In Review','ryan.chan','Engineering','WKSTN-ENG-30',0,1,0,'Command and Scripting Interpreter','T1059.003','QRadar','Suspicious batch script running on engineering workstation',NULL,NULL,NULL,current_timestamp(),current_timestamp()),
('XDR-9840','198.51.100.130','Malaysia','10.1.3.10','Credential Stuffing','Credential Attack',82,'HIGH',TIMESTAMP '2026-10-03 07:00:00','New','multiple','IT',NULL,0,0,156,'Brute Force','T1110.004','CortexXDR','156 accounts tested with leaked credential list in 10 min',NULL,NULL,NULL,current_timestamp(),current_timestamp());

CREATE TABLE IF NOT EXISTS user_risk_profiles (
    username STRING, full_name STRING, department STRING, email STRING,
    risk_score DECIMAL(5,1), alert_count_30d INT, high_alerts_30d INT,
    last_activity TIMESTAMP, mfa_enabled BOOLEAN, account_status STRING,
    location_anomaly BOOLEAN, time_anomaly BOOLEAN, data_anomaly BOOLEAN,
    risk_trend STRING, last_updated TIMESTAMP
) USING DELTA;

INSERT INTO user_risk_profiles VALUES
('john.doe','John Doe','Operations','john.doe@smebank.co.th',87.0,12,3,TIMESTAMP '2026-10-04 08:30:00',true,'Active',true,false,false,'increasing',current_timestamp()),
('jane.smith','Jane Smith','Finance','jane.smith@smebank.co.th',81.0,8,2,TIMESTAMP '2026-10-04 06:45:00',true,'Active',false,true,true,'increasing',current_timestamp()),
('peter.tan','Peter Tan','Finance','peter.tan@smebank.co.th',85.0,5,2,TIMESTAMP '2026-10-03 23:45:00',false,'Active',false,true,true,'stable',current_timestamp()),
('frank.lee','Frank Lee','Operations','frank.lee@smebank.co.th',74.0,9,2,TIMESTAMP '2026-10-04 04:15:00',true,'Active',true,true,false,'increasing',current_timestamp()),
('chris.ng','Chris Ng','Finance','chris.ng@smebank.co.th',70.0,6,2,TIMESTAMP '2026-10-03 10:00:00',true,'Active',false,false,true,'stable',current_timestamp());

CREATE TABLE IF NOT EXISTS soc_playbooks (
    playbook_id BIGINT, playbook_name STRING, threat_type STRING,
    mitre_id STRING, severity STRING, github_path STRING,
    avg_resolve_min INT, auto_executable BOOLEAN, last_used TIMESTAMP,
    success_count INT, created_at TIMESTAMP
) USING DELTA;

INSERT INTO soc_playbooks VALUES
(1,'Brute Force Detection','Credential Attack','T1110','HIGH','playbooks/alerts/brute-force-detection.yml',30,true,NULL,0,current_timestamp()),
(2,'Data Exfiltration Response','Data Theft','T1567','HIGH','playbooks/alerts/data-exfiltration.yml',60,false,NULL,0,current_timestamp()),
(3,'Ransomware Containment','Malware','T1486','CRITICAL','playbooks/alerts/ransomware-response.yml',20,true,NULL,0,current_timestamp()),
(4,'Privilege Escalation Investigation','Lateral Movement','T1078','HIGH','playbooks/alerts/privilege-escalation.yml',45,false,NULL,0,current_timestamp()),
(5,'Phishing Response','Phishing','T1566','MEDIUM','playbooks/alerts/phishing-response.yml',25,true,NULL,0,current_timestamp()),
(6,'Lateral Movement Containment','Lateral Movement','T1021','HIGH','playbooks/alerts/lateral-movement.yml',35,true,NULL,0,current_timestamp()),
(7,'C2 Traffic Blocking','Command & Control','T1071','HIGH','playbooks/alerts/c2-blocking.yml',15,true,NULL,0,current_timestamp()),
(8,'Malware Isolation','Malware','T1204','CRITICAL','playbooks/alerts/malware-isolation.yml',20,true,NULL,0,current_timestamp());

CREATE TABLE IF NOT EXISTS ai_score_history (
    score_id BIGINT, alert_id STRING, original_score DECIMAL(5,1),
    ai_score DECIMAL(5,1), model_version STRING, features_used STRING,
    confidence DECIMAL(4,3), was_correct BOOLEAN, scored_at TIMESTAMP
) USING DELTA;
