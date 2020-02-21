# ansible-kitchen
Lets bake some good Infra code here

## list inventory

Default output without setting ansible.cfg
```bash
## will give output of /etc/ansible/hosts
$ ansible --list-hosts all
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'
  hosts (0):
```

using custom file ansible.cfg
```buildoutcfg
[defaults]
inventory=inventory.yml
```

```yaml
all:
  hosts:
    localhost
  children:
    webservers:
      hosts:
        foo.example.com:
        bar.example.com:
    dbservers:
      hosts:
        one.example.com:
        two.example.com:
        three.example.com:
    east:
      hosts:
        foo.example.com:
        one.example.com:
        two.example.com:
    west:
      hosts:
        bar.example.com:
        three.example.com:
    prod:
      hosts:
        foo.example.com:
        one.example.com:
        two.example.com:
    test:
      hosts:
        bar.example.com:
        three.example.com:
```

```bash
$ ansible -i inventory.yml --list-host all
  hosts (6):
    localhost
    foo.example.com
    two.example.com
    one.example.com
    bar.example.com
    three.example.com
```

after setting ansible.cfg file
```bash
$ ansible --list-host all
  hosts (6):
    localhost
    foo.example.com
    two.example.com
    one.example.com
    bar.example.com
    three.example.com
```

using group names "webservers" is a group
```bash
$ ansible --list-host "webservers"
  hosts (2):
    bar.example.com
    foo.example.com
```

using wild cards
```bash
$ ansible --list-host "*.com"
  hosts (5):
    two.example.com
    one.example.com
    foo.example.com
    bar.example.com
    three.example.com
```



