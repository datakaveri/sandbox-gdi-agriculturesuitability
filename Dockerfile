FROM private-registry.iudx.org.in/gdi-sandbox:latest

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME} \
    && pip3 install scipy seaborn pysheds geopandas rasterio folium rioxarray leafmap whitebox graphh dash dash-leaflet

USER ${NB_USER}
