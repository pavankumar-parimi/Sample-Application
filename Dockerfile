FROM python:3
ENV SECRET_KEY=pavan
ENV MONGODB_URI=mongodb
RUN apt update && apt install git -y
RUN git clone https://github.com/pavankumar-parimi/Sample-Application.git
WORKDIR Sample-Application
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 4000
CMD [ "python3", "app.py" ]