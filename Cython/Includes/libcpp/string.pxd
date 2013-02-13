# deprecated cimport for backwards compatibility:
from libc.string cimport const_char

cdef extern from "<string>" namespace "std":

    size_t npos = -1

    cdef cppclass string:
        string() nogil except +
        string(const char *s) nogil except +
        string(const char *s, size_t n) nogil except +
        string(const string& str) nogil except +
        string(const string& str, size_t pos, size_t len = npos) nogil except +
        string(size_t n, char c) nogil except +

        const char* c_str() nogil
        const char* data() nogil
        size_t size() nogil
        size_t max_size() nogil
        size_t length() nogil
        void resize(size_t n) nogil
        void resize(size_t n, char c) nogil
        size_t capacity() nogil
        void reserve(size_t n = 0) nogil
        void clear() nogil
        bint empty() nogil

        char& at(size_t pos) nogil
        char& operator[](size_t pos) nogil
        int compare(string& str) nogil
        int compare(size_t pos, size_t len, const string& str)
        int compare(size_t pos, size_t len, const string& str, size_t subpos, size_t sublen)
        int compare(const char *s) nogil
        int compare(size_t pos, size_t len, const char *s) nogil
        int compare(size_t pos, size_t len, const char *s, size_t n) nogil

        string& append(const string& str) nogil
        string& append(const string& str, size_t pos, size_t sublen) nogil
        string& append(const char *s) nogil
        string& append(const char *s, size_t n) nogil
        string& append(size_t n, char c) nogil

        void push_back(char c) nogil

        string& assign (const string& str) nogil
        string& assign (const string& str, size_t subpos, size_t sublen) nogil
        string& assign (const char *s, size_t n) nogil
        string& assign (const char *s) nogil
        string& assign (size_t n, char c) nogil

        string& insert(size_t pos, const string& str) nogil
        string& insert(size_t pos, const string& str, size_t subpos, size_t sublen) nogil
        string& insert(size_t pos, const char *s) nogil
        string& insert(size_t pos, const char *s, size_t n) nogil
        string& insert(size_t pos, size_t n, char c) nogil

        size_t copy(char *s, size_t n, size_t pos = 0) nogil

        size_t find(const string& str) nogil #TODO ?
        size_t find(const string& str, size_t pos = 0) nogil
        size_t find(const char *s, size_t pos = 0) nogil
        size_t find(const char *s, size_t pos, size_t n) nogil
        size_t find(char c, size_t pos = 0) nogil

        size_t rfind(const string& str, size_t pos = npos) nogil
        size_t rfind(const char *s, size_t pos = npos) nogil
        size_t rfind(const char *s, size_t pos, size_t n) nogil
        size_t rfind(char c, size_t pos = npos) nogil
        size_t rfind(char c) nogil #TODO ?

        size_t find_first_of(const string& str, size_t pos = 0) nogil
        size_t find_first_of(const char *s, size_t pos = 0) nogil
        size_t find_first_of(const char *s, size_t pos, size_t n) nogil
        size_t find_first_of(char c, size_t pos = 0) nogil
        size_t find_first_of(char c) nogil #TODO ?

        size_t find_first_not_of(const string& str, size_t pos = 0) nogil
        size_t find_first_not_of(const char *s, size_t pos = 0) nogil
        size_t find_first_not_of(const char *s, size_t pos, size_t n) nogil
        size_t find_first_not_of(char c, size_t pos = 0) nogil
        size_t find_first_not_of(char c) nogil #TODO ?

        size_t find_last_of(const string& str, size_t pos = npos) nogil
        size_t find_last_of(const char*, size_t pos = npos) nogil
        size_t find_last_of(const char* s, size_t pos, size_t n) nogil
        size_t find_last_of(char c, size_t pos = npos) nogil
        size_t find_last_of(char c) nogil #TODO ?

        size_t find_last_not_of(const string& str, size_t pos = npos) nogil
        size_t find_last_not_of(const char *s, size_t pos = npos) nogil
        size_t find_last_not_of(const char *s, size_t pos, size_t n) nogil
        size_t find_last_not_of(char c, size_t pos = npos) nogil
        size_t find_last_not_of(char c) nogil #TODO ?

        string substr(size_t pos = 0, size_t len = npos) nogil
        string substr() nogil #TODO ?
        string substr(size_t) nogil #TODO ?

        #string& operator= (string&)
        #string& operator= (char*)
        #string& operator= (char)

        #TODO: only defined with two arguments ?
        string operator+ (const string& rhs) nogil
        string operator+ (const char *rhs) nogil

        bint operator==(const string& rhs) nogil
        bint operator==(const char *rhs) nogil

        bint operator!= (const string& rhs) nogil
        bint operator!= (const char *rhs) nogil

        bint operator< (const string& rhs) nogil
        bint operator< (const char *rhs) nogil

        bint operator> (const string& rhs) nogil
        bint operator> (const char *rhs) nogil

        bint operator<= (const string& rhs) nogil
        bint operator<= (const char *rhs) nogil

        bint operator>= (const string& rhs) nogil
        bint operator>= (const char *rhs) nogil
