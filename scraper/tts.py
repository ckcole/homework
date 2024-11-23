import requests
from bs4 import BeautifulSoup

# Base URL
base_url = "https://stats.sharksice.timetoscore.com/display-stats.php?league=27&season=0"

def get_page_content(url):
    response = requests.get(url)
    if response.status_code == 200:
        return response.content
    else:
        print(f"Failed to retrieve the page. Status code: {response.status_code}")
        return None

def parse_team_data(content):
    soup = BeautifulSoup(content, 'html.parser')
    # Example: Find all team names
    teams = soup.find_all('div', class_='team-name')
    for team in teams:
        print(team.text)

def main():
    content = get_page_content(base_url)
    if content:
        parse_team_data(content)

if __name__ == "__main__":
    main()
