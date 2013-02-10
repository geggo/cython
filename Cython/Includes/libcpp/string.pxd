
# deprecated cimport for backwards compatibility:
from libc.string cimport const_char


cdef extern from "<string>" namespace "std":

    size_t npos = -1

    cdef cppclass string:
        string() nogil except +
        string(char *__s) nogil except +
        string(char *__s, size_t __n) nogil except +
        string(string& __str) nogil except +
        # as a string formed by a repetition of character c, n times.
        string(size_t __n, char __c) nogil except +

        const char* c_str() nogil
        const char* data() nogil
        size_t size() nogil
        size_t max_size() nogil
        size_t length() nogil
        void resize(size_t __n) nogil
        void resize(size_t __n, char c __c) nogil
        size_t capacity() nogil
        void reserve(size_t __n) nogil
        void clear() nogil
        bint empty() nogil

        char& at(size_t __n) nogil
        char& operator[](size_t __pos) nogil
        int compare(string& __str) nogil 
        #TODO: overloaded compare missing 

        string& append(string& __str) nogil
        string& append(string& __str, size_t __pos, size_t __n) nogil
        string& append(char * __s) nogil
        string& append(char * __s, size_t __n) nogil
        string& append(size_t __n, char __c) nogil

        void push_back(char __c) nogil

        string& assign (string& __str) nogil
        string& assign (string& __str, size_t __pos, size_t __n) nogil
        string& assign (char *__s, size_t __n) nogil
        string& assign (char *__s) nogil
        string& assign (size_t __n, char __c) nogil

        string& insert(size_t __pos, string& __str) nogil
        string& insert(size_t __pos1, string& __str, size_t __pos2, size_t __n) nogil
        string& insert(size_t __pos, char *__s, size_t __n) nogil


        string& insert(size_t __pos, char* __s) nogil
        string& insert(size_t __pos, size_t __n, char __c) nogil

        size_t copy(char *__s, size_t __n, size_t __pos) nogil

        size_t find(string& __str) nogil #TODO ?
        size_t find(string& __str, size_t __pos) nogil
        size_t find(char *__s, size_t __pos, size_t __n) nogil
        size_t find(char *__s, size_t __pos) nogil
        size_t find(char __c, size_t __pos) nogil

        size_t rfind(string& __str, size_t __pos) nogil
        size_t rfind(char *__s, size_t __pos, size_t __n) nogil
        size_t rfind(char *__s, size_t __pos) nogil
        size_t rfind(char __c, size_t __pos) nogil
        size_t rfind(char __c) nogil #TODO ?

        size_t find_first_of(string& __str, size_t __pos) nogil
        size_t find_first_of(char *__s, size_t __pos, size_t __n) nogil
        size_t find_first_of(char *__s, size_t __pos) nogil
        size_t find_first_of(char __c, size_t __pos) nogil
        size_t find_first_of(char __c) nogil

        size_t find_first_not_of(string&, size_t) nogil
        size_t find_first_not_of(char* s, size_t, size_t) nogil
        size_t find_first_not_of(char*, size_t pos) nogil
        size_t find_first_not_of(char c, size_t) nogil
        size_t find_first_not_of(char c) nogil

        size_t find_last_of(string&, size_t) nogil
        size_t find_last_of(char* s, size_t, size_t) nogil
        size_t find_last_of(char*, size_t pos) nogil
        size_t find_last_of(char c, size_t) nogil
        size_t find_last_of(char c) nogil

        size_t find_last_not_of(string&, size_t) nogil
        size_t find_last_not_of(char* s, size_t, size_t) nogil
        size_t find_last_not_of(char*, size_t pos) nogil

        string substr(size_t, size_t) nogil
        string substr() nogil
        string substr(size_t) nogil

        size_t find_last_not_of(char c, size_t) nogil
        size_t find_last_not_of(char c) nogil

        #string& operator= (string&)
        #string& operator= (char*)
        #string& operator= (char)

        string operator+ (string& rhs) nogil
        string operator+ (char* rhs) nogil

        bint operator==(string&) nogil
        bint operator==(char*) nogil

        bint operator!= (string& rhs ) nogil
        bint operator!= (char* ) nogil

        bint operator< (string&) nogil
        bint operator< (char*) nogil

        bint operator> (string&) nogil
        bint operator> (char*) nogil

        bint operator<= (string&) nogil
        bint operator<= (char*) nogil

        bint operator>= (string&) nogil
        bint operator>= (char*) nogil
