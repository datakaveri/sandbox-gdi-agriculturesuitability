FROM private-registry.iudx.org.in/gdi-sandbox:1.0.8

COPY . ${HOME}
USER root
RUN pip3 install scipy seaborn pysheds geopandas rasterio folium rioxarray leafmap whitebox graphh dash dash-leaflet

USER ${NB_USER}
