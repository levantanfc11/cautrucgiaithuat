#!/usr/bin/env python
# coding: utf-8

# In[5]:


# Khởi tạo hàng đợi
queue = ['a']
 
# Thêm phần tử vào hàng đợi
queue.append('b')
queue.append('c')
queue.append('d')
 
print("Hàng đợi ban đầu")
print(queue)
 
# Xóa các phần tử khỏi hàng đợi
print("\nCác phần tử được xếp thứ tự từ hàng đợi")
print(queue.pop(0))
print(queue.pop(0))

print("\nHàng đợi sau khi loại bỏ các phần tử")
print(queue)


# In[ ]:




