# interim-weavedocs

Interim documentation for the ReWeave fork of Weave Net

## Steps

* Brought in the `/site/` directory from `rajch/weave`
* Ran the following search/replace operations to make the urls suitable for GitHub Pages hosting:

  ```yaml
  changes:
    - title: Hardcoded links to the old weaveworks website to local links
      search: \]\(https://www.weave.works/docs/net/latest/{0,1}(.*?)\)
      replace: ]({{ '/$1' | relative_url }})
    - title: Same, but with short url to old site
      search: \]\(https://weave.works/docs/net/latest/(.*?)\)
      replace: ]({{ '/$1' | relative_url }})
    - title: Remove the prefix 'site' and the suffix '.md' from all links
      search: \]\(/site/(.*?)\.md\)
      replace: ]({{ '/$1' | relative_url }})
    - title: Same as above for links having params or anchors
      search: \]\(/site/(.*?)\.md(.{1,})\)
      replace: ]({{ '/$1$2' | relative_url }})
    - title: Check links having only anchors for correctness
      search: \]\((!(http.://)|#)(.*?)\)
  ```
* Set up a `_config.yaml` containing, importantly, the following:

  ```yaml
  baseurl: "/interim-weavedocs"
  url: "https://rajch.github.io" 
  ```
* Moved the file `weave-net-overview.png` to the `overview` directory
* Moved the section title .md files into the respective section directories using the accopanying `restructure.sh` script
* Edited the following files by hand:
    * docs/kubernetes/kube-addon.md
    * docs/install/installing-weave.md
    * docs/concepts/encryption-implementation.md (Not finished)
    * docs/troubleshooting.md
    * docs/building.md
    * docs/concepts/index.md
    * docs/install/index.md
    * docs/install/installing-weave.md
    * docs/kubernetes/kube-addon.md
    * docs/tasks/index.md
    * docs/tasks/ipam/manual-ip-address.md
    * docs/tasks/weavedns/load-balance-fault-weavedns.md
    * docs/tasks/weavedns/managing-domains-weavedns.md
    * docs/troubleshooting.md
* Added a github actions workflow
