#!/usr/bin/env python
# coding: utf-8

# In[20]:


import mysql.connector as connector
print("mysql connector imported")
connection=connector.connect(user="capstone",password="XXX", db = 'littlelemondm')
print ('connected to', connection.database)
cursor =connection.cursor()


# In[5]:


cursor.execute("show tables")
results=cursor.fetchall()
for table in results:
    print(table)


# In[24]:


query ="""
SELECT c.FullName, c.Email, c.Phone, b.BookingID
FROM Customers as c  
JOIN Bookings as b ON c.CustomersID= b.CustomerID
INNER JOIN Orders as o ON b.BookingID = o.BookingID
WHERE o.TotalCost > 60;
"""
cursor.execute(query)


# In[25]:


customers = cursor.fetchall()
cols=cursor.column_names
print(cols)
for customer in customers:
    print(customer)


# In[26]:


connection.close()
print("connection is now closed")

