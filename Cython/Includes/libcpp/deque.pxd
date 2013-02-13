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
        deque(const deque& x) nogil except +
        deque(size_t n) nogil except +
        deque(size_t n, const T& value) nogil except +
        #deque[input_iterator](input_iterator first, input_iterator last)
        T& operator[](size_t n) nogil
        #deque& operator=(deque&)
        bint operator==(const deque& lhs, const deque& rhs) nogil
        bint operator!=(const deque& lhs, const deque& rhs) nogil
        bint operator<(const deque& lhs, const deque& rhs) nogil
        bint operator>(const deque& lhs, const deque& rhs) nogil
        bint operator<=(const deque& lhs, const deque& rhs) nogil
        bint operator>=(const deque& lhs, const deque& rhs) nogil
        void assign(size_t n, const T&  val) nogil
        void assign(input_iterator first, input_iterator last) nogil
        T& at(size_t n) nogil
        T& back() nogil
        iterator begin() nogil
        #const_iterator begin()
        void clear() nogil
        bint empty() nogil
        iterator end() nogil
        #const_iterator end()
        iterator erase(iterator position) nogil
        iterator erase(iterator first, iterator last) nogil
        T& front() nogil
        iterator insert(iterator position, const T& x) nogil
        void insert(iterator position, size_t n, const T& x) nogil
        #void insert(iterator position, input_iterator first, input_iterator last) nogil #TODO: declare input_iterator
        size_t max_size() nogil
        void pop_back() nogil
        void pop_front() nogil
        void push_back(const T& x) nogil
        void push_front(const T& x) nogil
        reverse_iterator rbegin() nogil
        #const_reverse_iterator rbegin()
        reverse_iterator rend() nogil
        #const_reverse_iterator rend()
        void resize(size_t n) nogil #TODO: default
        void resize(size_t n, T& val) nogil
        size_t size() nogil
        void swap(deque& x) nogil
