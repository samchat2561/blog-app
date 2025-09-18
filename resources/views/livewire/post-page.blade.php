<div class="max-w-screen-xl mx-auto p-3 sm:p-5 md:p-3 mt-10 mb-15 relative shadow-2xl font-[sarabun]">
    <h2 class="text-xl font-bold text-[#801810] mt-5 mb-8 underline underline-offset-10"">โพสต์บล็อกล่าสุด</h2>
    <div class="grid grid-cols-1 sm:grid-cols-12 gap-5">
        <div class="grid grid-cols-1 md:grid-cols-3 sm:col-span-6 lg:col-span-9 py-5 p-2 gap-5 shadow rounded-md">
            @if ($posts->isNotEmpty())
                @foreach ($posts as $post)
                    <div class="flex flex-col overflow-hidden rounded-lg shadow-lg">
                        <a href="#">
                            <div class="flex-shrink-0">
                                @if ($post->image != '')
                                    <img class="h-48 w-full object-cover hover:scale-[1.05] transition-all"
                                        src="{{ asset('storage/' . $post->image) }}" alt="$post->title">
                                @endif
                            </div>
                        </a>
                        <div class="flex flex-1 flex-col justify-between bg-white p-6">
                            <div class="flex-1">
                                <a href="#" class="mt-2 block">
                                    <p class="text-xl font-semibold text-gray-900">{{ $post->title }}</p>
                                    <p class="mt-3 text-base text-gray-500">{{ $post->preview_text }}</p>
                                </a>
                            </div>
                            <div class="mt-6 flex items-center">
                                <div class="flex-shrink-0">
                                    <a href="{{route('posts.index')}}">
                                        <span class="sr-only">Roel Aufderehar</span>
                                        <img src="https://readymadeui.com/profile_2.webp"
                                            class="w-10 h-10 rounded-full mx-auto" />
                                    </a>
                                </div>
                                <div class="ml-3">
                                    <p class="text-sm font-medium text-gray-900">
                                        <a href="{{route('posts.index')}}" class="hover:underline">
                                            Written by:
                                            @if ($post->user)
                                                <span>{{ $post->user->name }}</span>
                                            @else
                                                <span>Unknown User</span>
                                            @endif
                                        </a>
                                    </p>
                                    <div class="flex-cols-2 space-x-1 text-sm text-gray-500">
                                        <div>{{ $post->published_at->format('F j, Y') }}</div>
                                        <div>{{ $post->published_at->diffForHumans() }}</div>
                                        {{-- <span aria-hidden="true">·</span>
                                        <span>6 min read</span> --}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>

        <div class="sm:col-span-6 lg:col-span-3 p-2 shadow">
            <div>
                <h2 class="text-xl font-bold text-[#801810] mb-5">โพสต์บล็อก</h2>
                @if ($categories->isNotEmpty())
                    @foreach ($categories as $category)
                        <div class="flex items-start pb-3">
                            <a wire:navigate href="{{ route('posts.index') . '?categorySlug=' . $category->slug }}"
                                class="inline-block mr-3">
                                @if ($category->image != null)
                                    <img class="w-30 h-20 object-cover font-medium bg-cover bg-center rounded shadow hover:scale-[1.05] transition-all"
                                        src="{{ asset('storage/' . $category->image) }}" alt="{{ $category->title }}">
                                @endif
                            </a>

                            <div class="text-sm">
                                <a wire:navigate href="{{ route('posts.index') . '?categorySlug=' . $category->slug }}"
                                    class="text-gray-900 font-medium hover:text-indigo-600 leading-none">{{ $category->title }}</a>
                                <p class="text-gray-600 text-xs">{{ $category->created_at }}</p>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>

            <div>
                <h2 class="text-xl font-bold text-[#801810] mb-5">โพสต์บล็อกล่าสุด</h2>
                <div class="flex items-start pb-3">
                    <a href="#" class="inline-block mr-3">
                        <div class="w-20 h-18 bg-cover bg-center rounded shadow hover:scale-[1.05] transition-all"
                            style="background-image:url(https://media.gettyimages.com/photos/cristiano-ronaldo-of-juventus-fc-looks-dejected-during-the-uefa-of-picture-id1227967060?k=6&amp;m=1227967060&amp;s=612x612&amp;w=0&amp;h=cMSMlRyI6YAzcE_C2KgHGRLeVojHYoUhIvhwPBYv8f4=);">
                        </div>
                    </a>
                    <div class="text-sm">
                        <p class="text-gray-600 text-xs">Aug 18</p>
                        <a href="#"
                            class="text-gray-900 font-medium hover:text-indigo-600 leading-none">Cristiano
                            Ronaldo
                            of Juventus FC looks dejected during the...</a>
                    </div>
                </div>

                <div class="flex items-start pb-3">
                    <a href="#" class="inline-block mr-3">
                        <div class="w-20 h-18 bg-cover bg-center rounded shadow hover:scale-[1.05] transition-all"
                            style="background-image:url(https://media.gettyimages.com/photos/lionel-messi-and-marcandre-ter-stegen-of-fc-barcelona-waits-in-the-picture-id1266763488?k=6&amp;m=1266763488&amp;s=612x612&amp;w=0&amp;h=8vxz9HfQVfrff5N7d1lBVxtLamRQGK3J3lyHkUuuIiw=);">
                        </div>
                    </a>
                    <div class="text-sm w-2/3">
                        <p class="text-gray-600 text-xs">Jan 18</p>
                        <a href="#"
                            class="text-gray-900 font-medium hover:text-indigo-600 leading-none">Barcelona v
                            Bayern
                            Munich </a>
                    </div>
                </div>
                <div class="flex items-start mb-3 pb-3">
                    <a href="#" class="inline-block mr-3">
                        <div class="w-20 h-18 bg-cover bg-center rounded shadow hover:scale-[1.05] transition-all"
                            style="background-image:url(https://media.gettyimages.com/photos/cristiano-ronaldo-of-juventus-fc-looks-dejected-during-the-uefa-of-picture-id1227967060?k=6&amp;m=1227967060&amp;s=612x612&amp;w=0&amp;h=cMSMlRyI6YAzcE_C2KgHGRLeVojHYoUhIvhwPBYv8f4=);">
                        </div>
                    </a>
                    <div class="text-sm">
                        <p class="text-gray-600 text-xs">Aug 18</p>
                        <a href="#"
                            class="text-gray-900 font-medium hover:text-indigo-600 leading-none">Cristiano
                            Ronaldo
                            of Juventus FC looks dejected during the...</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
