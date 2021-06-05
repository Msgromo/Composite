#include <iostream>
// #include <IListable.h>
#include "../include/IListable.h"
#include "../include/File.h"

class File : public IListable
{
    private:
        std::string m_nodeName;

    public:
        File(std::string nodeName)
        {
            m_nodeName = nodeName;
        }

        virtual ~File(){}
        

        void list(int depth)//operation
        {
            std::string newStr(depth, '-');
            std::cout << newStr << m_nodeName << " depth: " << depth << std::endl;
        }
};