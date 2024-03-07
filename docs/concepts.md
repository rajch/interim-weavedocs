---
title: Concepts in Weave Net
menu_order: 20
search_type: Documentation
---

The section contains topics about how Weave Net works as well as providing a technical deep dive on how Weave Net implements fast datapath, and encryption.

* [Understanding Weave Net]({{ '/concepts/how-it-works' | relative_url }})
* [Weave Net Router Sleeve Encapsulation]({{ '/concepts/router-encapsulation' | relative_url }})
* [How Weave Net Interprets Network Topology]({{ '/concepts/network-topology' | relative_url }})
     * [Communicating Topology Among Peers](https://weave.works/docs/net/latest/concepts/network-topology/#topology)
     * [How Messages are Formed](https://weave.works/docs/net/latest/concepts/network-topology/#messages)
     * [Removing Peers](https://weave.works/docs/net/latest/concepts/network-topology/#removing-peers)
     * [What Happens When The Topology is Out of Date?](https://weave.works/docs/net/latest/concepts/network-topology/#out-of-date-topology)
* [Fast Datapath & Weave Net]({{ '/concepts/fastdp-how-it-works' | relative_url }})
* [IP Addresses, Routes and Networks]({{ '/concepts/ip-addresses' | relative_url }})
* [Encryption and Weave Net]({{ '/concepts/encryption' | relative_url }})
     * [How Weave Net Implements Encryption]({{ '/concepts/encryption-implementation' | relative_url }})
          * [Establishing the Emphemeral Session Key](https://weave.works/docs/net/latest/concepts/network-topology/#ephemeral-key)
          * [Key Generation and the Linux CSPRIN](https://weave.works/docs/net/latest/concepts/network-topology/#cspring)
          * [Encrypting and Decrypting TCP Messages](https://weave.works/docs/net/latest/concepts/network-topology/#tcp)
          * [Encrypting and Decrypting UDP Messages](https://weave.works/docs/net/latest/concepts/network-topology/#udp)
