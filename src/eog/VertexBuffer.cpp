#include "VertexBuffer.h"
#include "Debug.h"

VertexBuffer::VertexBuffer(const void* data, unsigned int size)
{
    GLCall( glGenBuffers(1, &m_RendererID) );
    GLCall( glBindBuffer(GL_ARRAY_BUFFER, m_RendererID) );
    GLCall( glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW) );
}
VertexBuffer::VertexBuffer(unsigned int idtocopy)
{
    m_RendererID = idtocopy;
}

VertexBuffer::~VertexBuffer()
{
    GLCall( glDeleteBuffers(1, &m_RendererID) );
}

void VertexBuffer::Bind() const
{
    GLCall( glBindBuffer(GL_ARRAY_BUFFER, m_RendererID) );
}
unsigned int VertexBuffer::Getrendererid(){
return m_RendererID;
}
void VertexBuffer::Unbind() const
{
    GLCall( glBindBuffer(GL_ARRAY_BUFFER, 0) );
}