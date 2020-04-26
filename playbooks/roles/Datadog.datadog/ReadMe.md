## Role Usage Example

- Check if playbook exists
```bash
$ cd ../../; ls datadog-playbook.yaml
datadog-playbook.yaml
```

- Run the playbook
```bash
$ ansible-playbook datadog-playbook.yaml -e "RUNTIME_VAR_DATADOG_API_KEY=2dd894f5******0c73474d48f" -e "RUNTIME_VAR_HOSTS=localhost"
```