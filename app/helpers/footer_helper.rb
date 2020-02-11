
def github_url(author, repo)
  link_to 'TestGuru', 'https://github.com/' + author.to_s + '/' + repo.to_s, target: '_blank', rel: 'nofollow'
end

def current_year
  Time.now.year
end
