# Server Monitoring and Information Script
Overview
This script provides various monitoring and information functionalities for servers. It allows users to:

- Display active ports and services
- Provide detailed information about specific ports
- List NGINX server domains, proxies, and their configuration files
- Display detailed configuration information for specific NGINX domains
- List users and their last login times
- Display detailed information about specific users
- List Docker images and containers
- Provide detailed information about specific Docker containers
- Display log activities within a specified date
# Usage
Run the script with the appropriate options to get the desired information. The general syntax is:

bash
Copy code

./script_name.sh [options]
Options

-p, --port [number]
- Without arguments: Lists all active ports, services, and the users associated with each port.
- With a port number: Provides detailed information about the specified port, including the user and service.
-d, --docker [id]
- Without arguments: Lists all Docker images and containers.
- With a container ID: Provides detailed information about the specified Docker container, including its status.
-n, --nginx [domain]
- Without arguments: Lists all NGINX domains, proxies, and their configuration files.
- With a domain name: Provides detailed configuration information for the specified NGINX domain, including the port and configuration file.
-u, --users [username]
- Without arguments: Lists all users and their last login times.
- With a username: Provides detailed information about the specified user, including their last login time.
-t, --time YYYY-MM-DD
- With a date: Displays log activities within the specified date.
-h, --help
- Displays the help message, showing the usage of the script and describing the available options.
Examples
- List all active ports, services, and users:

# Bash
Copy code
./script_name.sh --port
Get detailed information about a specific port (e.g., port 80):
__________________________________________________________________________________________________________
bash
Copy code
./script_name.sh --port 80
List all Docker images and containers:
__________________________________________________________________________________________________________
bash
Copy code
./script_name.sh --docker
Get detailed information about a specific Docker container (e.g., container ID abc123):
________________________________________________________________________________________________________________
bash
Copy code
./script_name.sh --docker abc123
List all NGINX domains, proxies, and their configuration files:
________________________________________________________________________________________________________________
bash
Copy code
./script_name.sh --nginx
Get detailed configuration information about a specific NGINX domain (e.g., example.com):
_____________________________________________________________________________________________________________
bash
Copy code
./script_name.sh --nginx example.com
List all users and their last login times:
___________________________________________________________________________________________________________
bash
Copy code
./script_name.sh --users
Get detailed information about a specific user (e.g., username john):
_______________________________________________________________________________________________________________
bash
Copy code
./script_name.sh --users john
Display log activities within a specified date (e.g., 2024-07-24):
____________________________________________________________________________________________________________
bash
Copy code
./script_name.sh --time 2024-07-24
Implementation Details
Functions
display_ports()
___________________________________________________________________________________________________________________
Lists all active ports along with the user and service associated with each port.
display_port_info(port)
________________________________________________________________________________________________________________
Provides detailed information about a specific port.
display_nginx()
__________________________________________________________________________________________________________________
Lists all NGINX server domains, proxies, and their configuration files.
display_nginx_info(domain)
____________________________________________________________________________________________________________
Provides detailed configuration information for a specific NGINX domain.
list_users()
________________________________________________________________________________________________________
Lists all users and their last login times.
user_info(username)
_________________________________________________________________________________________________________
Provides detailed information about a specific user.
list_docker()
____________________________________________________________________________________________________
Lists all Docker images and containers.
container_info(container_id)

Provides detailed information about a specific Docker container.
display_time_range(date)

Displays log activities within a specified date.
print_help()

Displays the help message showing the usage of the script and describing the available options.
