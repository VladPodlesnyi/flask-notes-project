from flaskblog import app

if __name__ == '__main__':
    app.run('0.0.0.0', port=5000, debug=True) #ssl_context=('cert.pem', 'key.pem')#
