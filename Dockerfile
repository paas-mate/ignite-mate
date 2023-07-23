FROM ttbb/ignite:nake

COPY docker-build /opt/ignite/mate

COPY --chmod=0755 sqlline.sh /opt/ignite

RUN ln -s /opt/ignite/sqlline.sh /usr/local/bin/sqlline

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/ignite/mate/scripts/start.sh"]
