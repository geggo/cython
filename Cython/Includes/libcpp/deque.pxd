from pair cimport pair

cdef extern from "<deque>" namespace "std":
    cdef cppclass deque[T]:
        cppclass iterator:
            T& operator*() nogil
            iterator operator++() nogil
            iterator operator--() nogil
            bint operator==(iterator) nogil
            bint operator!=(iterator) nogil
        cppclass reverse_iterator:
            T& operator*() nogil
            iterator operator++() nogil
            iterator operator--() nogil
            bint operator==(reverse_iterator) nogil
            bint operator!=(reverse_iterator) nogil
        #cppclass const_iterator(iterator):
        #    pass
        #cppclass const_reverse_iterator(reverse_iterator):
        #    pass
        deque() nogil except +
        deque(deque& __x) nogil except +
        deque(size_t __n) nogil except +
        deque(size_t __n, T& __value) nogil except +
        #deque[input_iterator](input_iterator, input_iterator)
        T& operator[](size_t __n) nogil
        #deque& operator=(deque&)
        bint operator==(deque&, deque&) nogil
        bint operator!=(deque&, deque&) nogil
        bint operator<(deque&, deque&) nogil
        bint operator>(deque&, deque&) nogil
        bint operator<=(deque&, deque&) nogil
        bint operator>=(deque&, deque&) nogil
        void assign(size_t __n, T&  __val) nogil
        void assign(input_iterator __first, input_iterator __last) nogil
        T& at(size_t __n) nogil
        T& back() nogil
        iterator begin() nogil
        #const_iterator begin()
        void clear() nogil
        bint empty() nogil
        iterator end() nogil
        #const_iterator end()
        iterator erase(iterator __position) nogil
        iterator erase(iterator __first, iterator __last) nogil
        T& front() nogil
        iterator insert(iterator __position, const T& __x) nogil
        void insert(iterator__position, size_t __n, T& __x) nogil
        void insert(iterator __position, input_iterator __first, input_iterator __last) nogil
        size_t max_size() nogil
        void pop_back() nogil
        void pop_front() nogil
        void push_back(T& __x) nogil
        void push_front(T& __x) nogil
        reverse_iterator rbegin() nogil
        #const_reverse_iterator rbegin()
        reverse_iterator rend() nogil
        #const_reverse_iterator rend()
        void resize(size_t) nogil
        void resize(size_t __new_size, T& __x) nogil
        size_t size() nogil
        void swap(deque& __x) nogil
