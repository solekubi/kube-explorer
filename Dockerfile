FROM alpine:latest

WORKDIR /app

COPY kube-explorer .

RUN chmod a+x kube-explorer 

EXPOSE 80

CMD [ "./kube-explorer","--kubeconfig=./k3s.yaml","--http-listen-port=80","--https-listen-port=0" ]
