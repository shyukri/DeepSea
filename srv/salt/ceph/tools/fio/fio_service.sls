
include:
  - .fio

fio service file:
  file.managed:
    - name: /etc/systemd/system/fio.service
    - source: salt://ceph/tools/fio/files/fio.service
    - user: root
    - group: root
    - mode: 664

fio service:
  service.running:
    - name: fio
    - require:
      - pkg: fio package
      - file: /etc/systemd/system/fio.service
