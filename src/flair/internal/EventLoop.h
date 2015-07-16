#ifndef flair_internal_EventLoop_h
#define flair_internal_EventLoop_h

#include "flair/internal/ConcurrentQueue.h"
#include "uv.h"

#include <thread>
#include <atomic>

namespace flair {
   namespace internal {
      
      class EventLoop
      {
      public:
         EventLoop();
         virtual ~EventLoop();
         
         void Enqueue();
         
         
      private:
         std::atomic_bool quit;
         std::thread thread;
         
         uv_async_t asyncNullHandle;
         uv_loop_t *uv;
         
         ConcurrentQueue<int> pendingOperations;
         
      private:
         static void eventLoop(EventLoop *self);
         
         uv_async_t asyncDequeueHandle;
         static void asyncDequeue(uv_async_t *handle);
      };
      
   }
}

#endif