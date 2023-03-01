# aries_cloudagent package

Aries Cloud Agent.

## Subpackages


* [aries_cloudagent.admin package](aries_cloudagent.admin.md)


    * [Submodules](aries_cloudagent.admin.md#submodules)


    * [aries_cloudagent.admin.base_server module](aries_cloudagent.admin.md#module-aries_cloudagent.admin.base_server)


        * [`BaseAdminServer`](aries_cloudagent.admin.md#aries_cloudagent.admin.base_server.BaseAdminServer)


            * [`BaseAdminServer.start()`](aries_cloudagent.admin.md#aries_cloudagent.admin.base_server.BaseAdminServer.start)


            * [`BaseAdminServer.stop()`](aries_cloudagent.admin.md#aries_cloudagent.admin.base_server.BaseAdminServer.stop)


    * [aries_cloudagent.admin.error module](aries_cloudagent.admin.md#module-aries_cloudagent.admin.error)


        * [`AdminError`](aries_cloudagent.admin.md#aries_cloudagent.admin.error.AdminError)


        * [`AdminSetupError`](aries_cloudagent.admin.md#aries_cloudagent.admin.error.AdminSetupError)


    * [aries_cloudagent.admin.request_context module](aries_cloudagent.admin.md#module-aries_cloudagent.admin.request_context)


        * [`AdminRequestContext`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext)


            * [`AdminRequestContext.inject()`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.inject)


            * [`AdminRequestContext.inject_or()`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.inject_or)


            * [`AdminRequestContext.injector`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.injector)


            * [`AdminRequestContext.profile`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.profile)


            * [`AdminRequestContext.session()`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.session)


            * [`AdminRequestContext.settings`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.settings)


            * [`AdminRequestContext.test_context()`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.test_context)


            * [`AdminRequestContext.transaction()`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.transaction)


            * [`AdminRequestContext.update_settings()`](aries_cloudagent.admin.md#aries_cloudagent.admin.request_context.AdminRequestContext.update_settings)


    * [aries_cloudagent.admin.server module](aries_cloudagent.admin.md#aries-cloudagent-admin-server-module)


* [aries_cloudagent.askar package](aries_cloudagent.askar.md)


    * [Subpackages](aries_cloudagent.askar.md#subpackages)


        * [aries_cloudagent.askar.didcomm package](aries_cloudagent.askar.didcomm.md)


            * [Submodules](aries_cloudagent.askar.didcomm.md#submodules)


            * [aries_cloudagent.askar.didcomm.v1 module](aries_cloudagent.askar.didcomm.md#aries-cloudagent-askar-didcomm-v1-module)


            * [aries_cloudagent.askar.didcomm.v2 module](aries_cloudagent.askar.didcomm.md#aries-cloudagent-askar-didcomm-v2-module)


    * [Submodules](aries_cloudagent.askar.md#submodules)


    * [aries_cloudagent.askar.profile module](aries_cloudagent.askar.md#aries-cloudagent-askar-profile-module)


    * [aries_cloudagent.askar.store module](aries_cloudagent.askar.md#module-aries_cloudagent.askar.store)


        * [`AskarOpenStore`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarOpenStore)


            * [`AskarOpenStore.close()`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarOpenStore.close)


            * [`AskarOpenStore.name`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarOpenStore.name)


        * [`AskarStoreConfig`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig)


            * [`AskarStoreConfig.DEFAULT_KEY`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.DEFAULT_KEY)


            * [`AskarStoreConfig.DEFAULT_KEY_DERIVATION`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.DEFAULT_KEY_DERIVATION)


            * [`AskarStoreConfig.DEFAULT_STORAGE_TYPE`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.DEFAULT_STORAGE_TYPE)


            * [`AskarStoreConfig.KEY_DERIVATION_ARGON2I_INT`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.KEY_DERIVATION_ARGON2I_INT)


            * [`AskarStoreConfig.KEY_DERIVATION_ARGON2I_MOD`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.KEY_DERIVATION_ARGON2I_MOD)


            * [`AskarStoreConfig.KEY_DERIVATION_RAW`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.KEY_DERIVATION_RAW)


            * [`AskarStoreConfig.get_uri()`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.get_uri)


            * [`AskarStoreConfig.open_store()`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.open_store)


            * [`AskarStoreConfig.remove_store()`](aries_cloudagent.askar.md#aries_cloudagent.askar.store.AskarStoreConfig.remove_store)


* [aries_cloudagent.cache package](aries_cloudagent.cache.md)


    * [Submodules](aries_cloudagent.cache.md#submodules)


    * [aries_cloudagent.cache.base module](aries_cloudagent.cache.md#module-aries_cloudagent.cache.base)


        * [`BaseCache`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache)


            * [`BaseCache.acquire()`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache.acquire)


            * [`BaseCache.clear()`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache.clear)


            * [`BaseCache.flush()`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache.flush)


            * [`BaseCache.get()`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache.get)


            * [`BaseCache.release()`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache.release)


            * [`BaseCache.set()`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.BaseCache.set)


        * [`CacheError`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.CacheError)


        * [`CacheKeyLock`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.CacheKeyLock)


            * [`CacheKeyLock.done`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.CacheKeyLock.done)


            * [`CacheKeyLock.future`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.CacheKeyLock.future)


            * [`CacheKeyLock.parent`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.CacheKeyLock.parent)


            * [`CacheKeyLock.release()`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.CacheKeyLock.release)


            * [`CacheKeyLock.result`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.CacheKeyLock.result)


            * [`CacheKeyLock.set_result()`](aries_cloudagent.cache.md#aries_cloudagent.cache.base.CacheKeyLock.set_result)


    * [aries_cloudagent.cache.in_memory module](aries_cloudagent.cache.md#module-aries_cloudagent.cache.in_memory)


        * [`InMemoryCache`](aries_cloudagent.cache.md#aries_cloudagent.cache.in_memory.InMemoryCache)


            * [`InMemoryCache.clear()`](aries_cloudagent.cache.md#aries_cloudagent.cache.in_memory.InMemoryCache.clear)


            * [`InMemoryCache.flush()`](aries_cloudagent.cache.md#aries_cloudagent.cache.in_memory.InMemoryCache.flush)


            * [`InMemoryCache.get()`](aries_cloudagent.cache.md#aries_cloudagent.cache.in_memory.InMemoryCache.get)


            * [`InMemoryCache.set()`](aries_cloudagent.cache.md#aries_cloudagent.cache.in_memory.InMemoryCache.set)


* [aries_cloudagent.commands package](aries_cloudagent.commands.md)


    * [`available_commands()`](aries_cloudagent.commands.md#aries_cloudagent.commands.available_commands)


    * [`load_command()`](aries_cloudagent.commands.md#aries_cloudagent.commands.load_command)


    * [`run_command()`](aries_cloudagent.commands.md#aries_cloudagent.commands.run_command)


    * [Submodules](aries_cloudagent.commands.md#submodules)


    * [aries_cloudagent.commands.help module](aries_cloudagent.commands.md#module-aries_cloudagent.commands.help)


        * [`execute()`](aries_cloudagent.commands.md#aries_cloudagent.commands.help.execute)


        * [`main()`](aries_cloudagent.commands.md#aries_cloudagent.commands.help.main)


    * [aries_cloudagent.commands.provision module](aries_cloudagent.commands.md#aries-cloudagent-commands-provision-module)


    * [aries_cloudagent.commands.start module](aries_cloudagent.commands.md#aries-cloudagent-commands-start-module)


    * [aries_cloudagent.commands.upgrade module](aries_cloudagent.commands.md#aries-cloudagent-commands-upgrade-module)


* [aries_cloudagent.config package](aries_cloudagent.config.md)


    * [Submodules](aries_cloudagent.config.md#submodules)


    * [aries_cloudagent.config.argparse module](aries_cloudagent.config.md#aries-cloudagent-config-argparse-module)


    * [aries_cloudagent.config.banner module](aries_cloudagent.config.md#module-aries_cloudagent.config.banner)


        * [`Banner`](aries_cloudagent.config.md#aries_cloudagent.config.banner.Banner)


            * [`Banner.lr_pad()`](aries_cloudagent.config.md#aries_cloudagent.config.banner.Banner.lr_pad)


            * [`Banner.print_border()`](aries_cloudagent.config.md#aries_cloudagent.config.banner.Banner.print_border)


            * [`Banner.print_list()`](aries_cloudagent.config.md#aries_cloudagent.config.banner.Banner.print_list)


            * [`Banner.print_spacer()`](aries_cloudagent.config.md#aries_cloudagent.config.banner.Banner.print_spacer)


            * [`Banner.print_subtitle()`](aries_cloudagent.config.md#aries_cloudagent.config.banner.Banner.print_subtitle)


            * [`Banner.print_title()`](aries_cloudagent.config.md#aries_cloudagent.config.banner.Banner.print_title)


            * [`Banner.print_version()`](aries_cloudagent.config.md#aries_cloudagent.config.banner.Banner.print_version)


    * [aries_cloudagent.config.base module](aries_cloudagent.config.md#module-aries_cloudagent.config.base)


        * [`BaseInjector`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseInjector)


            * [`BaseInjector.copy()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseInjector.copy)


            * [`BaseInjector.inject()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseInjector.inject)


            * [`BaseInjector.inject_or()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseInjector.inject_or)


        * [`BaseProvider`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseProvider)


            * [`BaseProvider.provide()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseProvider.provide)


        * [`BaseSettings`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings)


            * [`BaseSettings.copy()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings.copy)


            * [`BaseSettings.extend()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings.extend)


            * [`BaseSettings.get_bool()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings.get_bool)


            * [`BaseSettings.get_int()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings.get_int)


            * [`BaseSettings.get_str()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings.get_str)


            * [`BaseSettings.get_value()`](aries_cloudagent.config.md#aries_cloudagent.config.base.BaseSettings.get_value)


        * [`ConfigError`](aries_cloudagent.config.md#aries_cloudagent.config.base.ConfigError)


        * [`InjectionError`](aries_cloudagent.config.md#aries_cloudagent.config.base.InjectionError)


        * [`SettingsError`](aries_cloudagent.config.md#aries_cloudagent.config.base.SettingsError)


    * [aries_cloudagent.config.base_context module](aries_cloudagent.config.md#module-aries_cloudagent.config.base_context)


        * [`ContextBuilder`](aries_cloudagent.config.md#aries_cloudagent.config.base_context.ContextBuilder)


            * [`ContextBuilder.build_context()`](aries_cloudagent.config.md#aries_cloudagent.config.base_context.ContextBuilder.build_context)


            * [`ContextBuilder.update_settings()`](aries_cloudagent.config.md#aries_cloudagent.config.base_context.ContextBuilder.update_settings)


    * [aries_cloudagent.config.default_context module](aries_cloudagent.config.md#aries-cloudagent-config-default-context-module)


    * [aries_cloudagent.config.error module](aries_cloudagent.config.md#module-aries_cloudagent.config.error)


        * [`ArgsParseError`](aries_cloudagent.config.md#aries_cloudagent.config.error.ArgsParseError)


    * [aries_cloudagent.config.injection_context module](aries_cloudagent.config.md#module-aries_cloudagent.config.injection_context)


        * [`InjectionContext`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext)


            * [`InjectionContext.ROOT_SCOPE`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.ROOT_SCOPE)


            * [`InjectionContext.copy()`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.copy)


            * [`InjectionContext.inject()`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.inject)


            * [`InjectionContext.inject_or()`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.inject_or)


            * [`InjectionContext.injector`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.injector)


            * [`InjectionContext.injector_for_scope()`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.injector_for_scope)


            * [`InjectionContext.scope_name`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.scope_name)


            * [`InjectionContext.settings`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.settings)


            * [`InjectionContext.start_scope()`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.start_scope)


            * [`InjectionContext.update_settings()`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContext.update_settings)


        * [`InjectionContextError`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.InjectionContextError)


        * [`Scope`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.Scope)


            * [`Scope.injector`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.Scope.injector)


            * [`Scope.name`](aries_cloudagent.config.md#aries_cloudagent.config.injection_context.Scope.name)


    * [aries_cloudagent.config.injector module](aries_cloudagent.config.md#module-aries_cloudagent.config.injector)


        * [`Injector`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector)


            * [`Injector.bind_instance()`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector.bind_instance)


            * [`Injector.bind_provider()`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector.bind_provider)


            * [`Injector.clear_binding()`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector.clear_binding)


            * [`Injector.copy()`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector.copy)


            * [`Injector.get_provider()`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector.get_provider)


            * [`Injector.inject()`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector.inject)


            * [`Injector.inject_or()`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector.inject_or)


            * [`Injector.settings`](aries_cloudagent.config.md#aries_cloudagent.config.injector.Injector.settings)


    * [aries_cloudagent.config.ledger module](aries_cloudagent.config.md#aries-cloudagent-config-ledger-module)


    * [aries_cloudagent.config.logging module](aries_cloudagent.config.md#module-aries_cloudagent.config.logging)


        * [`LoggingConfigurator`](aries_cloudagent.config.md#aries_cloudagent.config.logging.LoggingConfigurator)


            * [`LoggingConfigurator.configure()`](aries_cloudagent.config.md#aries_cloudagent.config.logging.LoggingConfigurator.configure)


            * [`LoggingConfigurator.print_banner()`](aries_cloudagent.config.md#aries_cloudagent.config.logging.LoggingConfigurator.print_banner)


        * [`load_resource()`](aries_cloudagent.config.md#aries_cloudagent.config.logging.load_resource)


    * [aries_cloudagent.config.plugin_settings module](aries_cloudagent.config.md#module-aries_cloudagent.config.plugin_settings)


        * [`PluginSettings`](aries_cloudagent.config.md#aries_cloudagent.config.plugin_settings.PluginSettings)


            * [`PluginSettings.copy()`](aries_cloudagent.config.md#aries_cloudagent.config.plugin_settings.PluginSettings.copy)


            * [`PluginSettings.extend()`](aries_cloudagent.config.md#aries_cloudagent.config.plugin_settings.PluginSettings.extend)


            * [`PluginSettings.for_plugin()`](aries_cloudagent.config.md#aries_cloudagent.config.plugin_settings.PluginSettings.for_plugin)


            * [`PluginSettings.get_value()`](aries_cloudagent.config.md#aries_cloudagent.config.plugin_settings.PluginSettings.get_value)


    * [aries_cloudagent.config.provider module](aries_cloudagent.config.md#module-aries_cloudagent.config.provider)


        * [`CachedProvider`](aries_cloudagent.config.md#aries_cloudagent.config.provider.CachedProvider)


            * [`CachedProvider.provide()`](aries_cloudagent.config.md#aries_cloudagent.config.provider.CachedProvider.provide)


        * [`ClassProvider`](aries_cloudagent.config.md#aries_cloudagent.config.provider.ClassProvider)


            * [`ClassProvider.Inject`](aries_cloudagent.config.md#aries_cloudagent.config.provider.ClassProvider.Inject)


            * [`ClassProvider.provide()`](aries_cloudagent.config.md#aries_cloudagent.config.provider.ClassProvider.provide)


        * [`InstanceProvider`](aries_cloudagent.config.md#aries_cloudagent.config.provider.InstanceProvider)


            * [`InstanceProvider.provide()`](aries_cloudagent.config.md#aries_cloudagent.config.provider.InstanceProvider.provide)


        * [`StatsProvider`](aries_cloudagent.config.md#aries_cloudagent.config.provider.StatsProvider)


            * [`StatsProvider.provide()`](aries_cloudagent.config.md#aries_cloudagent.config.provider.StatsProvider.provide)


    * [aries_cloudagent.config.settings module](aries_cloudagent.config.md#module-aries_cloudagent.config.settings)


        * [`Settings`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings)


            * [`Settings.clear_value()`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings.clear_value)


            * [`Settings.copy()`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings.copy)


            * [`Settings.extend()`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings.extend)


            * [`Settings.for_plugin()`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings.for_plugin)


            * [`Settings.get_value()`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings.get_value)


            * [`Settings.set_default()`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings.set_default)


            * [`Settings.set_value()`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings.set_value)


            * [`Settings.update()`](aries_cloudagent.config.md#aries_cloudagent.config.settings.Settings.update)


    * [aries_cloudagent.config.util module](aries_cloudagent.config.md#module-aries_cloudagent.config.util)


        * [`BoundedInt`](aries_cloudagent.config.md#aries_cloudagent.config.util.BoundedInt)


        * [`ByteSize`](aries_cloudagent.config.md#aries_cloudagent.config.util.ByteSize)


        * [`common_config()`](aries_cloudagent.config.md#aries_cloudagent.config.util.common_config)


    * [aries_cloudagent.config.wallet module](aries_cloudagent.config.md#aries-cloudagent-config-wallet-module)


* [aries_cloudagent.connections package](aries_cloudagent.connections.md)


    * [Subpackages](aries_cloudagent.connections.md#subpackages)


        * [aries_cloudagent.connections.models package](aries_cloudagent.connections.models.md)


            * [Subpackages](aries_cloudagent.connections.models.md#subpackages)


            * [Submodules](aries_cloudagent.connections.models.md#submodules)


            * [aries_cloudagent.connections.models.conn_record module](aries_cloudagent.connections.models.md#aries-cloudagent-connections-models-conn-record-module)


            * [aries_cloudagent.connections.models.connection_target module](aries_cloudagent.connections.models.md#aries-cloudagent-connections-models-connection-target-module)


    * [Submodules](aries_cloudagent.connections.md#submodules)


    * [aries_cloudagent.connections.base_manager module](aries_cloudagent.connections.md#aries-cloudagent-connections-base-manager-module)


* [aries_cloudagent.core package](aries_cloudagent.core.md)


    * [Subpackages](aries_cloudagent.core.md#subpackages)


        * [aries_cloudagent.core.in_memory package](aries_cloudagent.core.in_memory.md)


            * [Subpackages](aries_cloudagent.core.in_memory.md#subpackages)


            * [Submodules](aries_cloudagent.core.in_memory.md#submodules)


            * [aries_cloudagent.core.in_memory.profile module](aries_cloudagent.core.in_memory.md#aries-cloudagent-core-in-memory-profile-module)


    * [Submodules](aries_cloudagent.core.md#submodules)


    * [aries_cloudagent.core.conductor module](aries_cloudagent.core.md#aries-cloudagent-core-conductor-module)


    * [aries_cloudagent.core.dispatcher module](aries_cloudagent.core.md#aries-cloudagent-core-dispatcher-module)


    * [aries_cloudagent.core.error module](aries_cloudagent.core.md#module-aries_cloudagent.core.error)


        * [`BaseError`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError)


            * [`BaseError.message`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError.message)


            * [`BaseError.roll_up`](aries_cloudagent.core.md#aries_cloudagent.core.error.BaseError.roll_up)


        * [`ProfileDuplicateError`](aries_cloudagent.core.md#aries_cloudagent.core.error.ProfileDuplicateError)


        * [`ProfileError`](aries_cloudagent.core.md#aries_cloudagent.core.error.ProfileError)


        * [`ProfileNotFoundError`](aries_cloudagent.core.md#aries_cloudagent.core.error.ProfileNotFoundError)


        * [`ProfileSessionInactiveError`](aries_cloudagent.core.md#aries_cloudagent.core.error.ProfileSessionInactiveError)


        * [`ProtocolDefinitionValidationError`](aries_cloudagent.core.md#aries_cloudagent.core.error.ProtocolDefinitionValidationError)


        * [`ProtocolMinorVersionNotSupported`](aries_cloudagent.core.md#aries_cloudagent.core.error.ProtocolMinorVersionNotSupported)


        * [`StartupError`](aries_cloudagent.core.md#aries_cloudagent.core.error.StartupError)


    * [aries_cloudagent.core.event_bus module](aries_cloudagent.core.md#module-aries_cloudagent.core.event_bus)


        * [`Event`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.Event)


            * [`Event.payload`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.Event.payload)


            * [`Event.topic`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.Event.topic)


            * [`Event.with_metadata()`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.Event.with_metadata)


        * [`EventBus`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventBus)


            * [`EventBus.notify()`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventBus.notify)


            * [`EventBus.subscribe()`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventBus.subscribe)


            * [`EventBus.unsubscribe()`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventBus.unsubscribe)


            * [`EventBus.wait_for_event()`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventBus.wait_for_event)


        * [`EventMetadata`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventMetadata)


            * [`EventMetadata.match`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventMetadata.match)


            * [`EventMetadata.pattern`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventMetadata.pattern)


        * [`EventWithMetadata`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventWithMetadata)


            * [`EventWithMetadata.metadata`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.EventWithMetadata.metadata)


        * [`MockEventBus`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.MockEventBus)


            * [`MockEventBus.notify()`](aries_cloudagent.core.md#aries_cloudagent.core.event_bus.MockEventBus.notify)


    * [aries_cloudagent.core.goal_code_registry module](aries_cloudagent.core.md#module-aries_cloudagent.core.goal_code_registry)


        * [`GoalCodeRegistry`](aries_cloudagent.core.md#aries_cloudagent.core.goal_code_registry.GoalCodeRegistry)


            * [`GoalCodeRegistry.goal_codes_matching_query()`](aries_cloudagent.core.md#aries_cloudagent.core.goal_code_registry.GoalCodeRegistry.goal_codes_matching_query)


            * [`GoalCodeRegistry.register_controllers()`](aries_cloudagent.core.md#aries_cloudagent.core.goal_code_registry.GoalCodeRegistry.register_controllers)


    * [aries_cloudagent.core.oob_processor module](aries_cloudagent.core.md#aries-cloudagent-core-oob-processor-module)


    * [aries_cloudagent.core.plugin_registry module](aries_cloudagent.core.md#module-aries_cloudagent.core.plugin_registry)


        * [`PluginRegistry`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry)


            * [`PluginRegistry.init_context()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.init_context)


            * [`PluginRegistry.load_protocol_version()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.load_protocol_version)


            * [`PluginRegistry.load_protocols()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.load_protocols)


            * [`PluginRegistry.plugin_names`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.plugin_names)


            * [`PluginRegistry.plugins`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.plugins)


            * [`PluginRegistry.post_process_routes()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.post_process_routes)


            * [`PluginRegistry.register_admin_routes()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.register_admin_routes)


            * [`PluginRegistry.register_package()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.register_package)


            * [`PluginRegistry.register_plugin()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.register_plugin)


            * [`PluginRegistry.register_protocol_events()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.register_protocol_events)


            * [`PluginRegistry.validate_version()`](aries_cloudagent.core.md#aries_cloudagent.core.plugin_registry.PluginRegistry.validate_version)


    * [aries_cloudagent.core.profile module](aries_cloudagent.core.md#module-aries_cloudagent.core.profile)


        * [`Profile`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile)


            * [`Profile.BACKEND_NAME`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.BACKEND_NAME)


            * [`Profile.DEFAULT_NAME`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.DEFAULT_NAME)


            * [`Profile.backend`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.backend)


            * [`Profile.close()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.close)


            * [`Profile.context`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.context)


            * [`Profile.created`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.created)


            * [`Profile.inject()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.inject)


            * [`Profile.inject_or()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.inject_or)


            * [`Profile.name`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.name)


            * [`Profile.notify()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.notify)


            * [`Profile.remove()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.remove)


            * [`Profile.session()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.session)


            * [`Profile.settings`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.settings)


            * [`Profile.transaction()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.Profile.transaction)


        * [`ProfileManager`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileManager)


            * [`ProfileManager.open()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileManager.open)


            * [`ProfileManager.provision()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileManager.provision)


        * [`ProfileManagerProvider`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileManagerProvider)


            * [`ProfileManagerProvider.MANAGER_TYPES`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileManagerProvider.MANAGER_TYPES)


            * [`ProfileManagerProvider.provide()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileManagerProvider.provide)


        * [`ProfileSession`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession)


            * [`ProfileSession.active`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.active)


            * [`ProfileSession.commit()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.commit)


            * [`ProfileSession.context`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.context)


            * [`ProfileSession.inject()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.inject)


            * [`ProfileSession.inject_or()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.inject_or)


            * [`ProfileSession.is_transaction`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.is_transaction)


            * [`ProfileSession.profile`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.profile)


            * [`ProfileSession.rollback()`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.rollback)


            * [`ProfileSession.settings`](aries_cloudagent.core.md#aries_cloudagent.core.profile.ProfileSession.settings)


    * [aries_cloudagent.core.protocol_registry module](aries_cloudagent.core.md#module-aries_cloudagent.core.protocol_registry)


        * [`ProtocolRegistry`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry)


            * [`ProtocolRegistry.controllers`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.controllers)


            * [`ProtocolRegistry.create_msg_types_for_minor_version()`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.create_msg_types_for_minor_version)


            * [`ProtocolRegistry.message_types`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.message_types)


            * [`ProtocolRegistry.parse_type_string()`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.parse_type_string)


            * [`ProtocolRegistry.prepare_disclosed()`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.prepare_disclosed)


            * [`ProtocolRegistry.protocols`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.protocols)


            * [`ProtocolRegistry.protocols_matching_query()`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.protocols_matching_query)


            * [`ProtocolRegistry.register_controllers()`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.register_controllers)


            * [`ProtocolRegistry.register_message_types()`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.register_message_types)


            * [`ProtocolRegistry.resolve_message_class()`](aries_cloudagent.core.md#aries_cloudagent.core.protocol_registry.ProtocolRegistry.resolve_message_class)


    * [aries_cloudagent.core.util module](aries_cloudagent.core.md#aries-cloudagent-core-util-module)


* [aries_cloudagent.did package](aries_cloudagent.did.md)


    * [Submodules](aries_cloudagent.did.md#submodules)


    * [aries_cloudagent.did.did_key module](aries_cloudagent.did.md#aries-cloudagent-did-did-key-module)


* [aries_cloudagent.holder package](aries_cloudagent.holder.md)


    * [Submodules](aries_cloudagent.holder.md#submodules)


    * [aries_cloudagent.holder.routes module](aries_cloudagent.holder.md#aries-cloudagent-holder-routes-module)


* [aries_cloudagent.indy package](aries_cloudagent.indy.md)


    * [Subpackages](aries_cloudagent.indy.md#subpackages)


        * [aries_cloudagent.indy.credx package](aries_cloudagent.indy.credx.md)


            * [Submodules](aries_cloudagent.indy.credx.md#submodules)


            * [aries_cloudagent.indy.credx.holder module](aries_cloudagent.indy.credx.md#aries-cloudagent-indy-credx-holder-module)


            * [aries_cloudagent.indy.credx.issuer module](aries_cloudagent.indy.credx.md#aries-cloudagent-indy-credx-issuer-module)


            * [aries_cloudagent.indy.credx.verifier module](aries_cloudagent.indy.credx.md#aries-cloudagent-indy-credx-verifier-module)


        * [aries_cloudagent.indy.models package](aries_cloudagent.indy.models.md)


            * [Submodules](aries_cloudagent.indy.models.md#submodules)


            * [aries_cloudagent.indy.models.cred module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-cred-module)


            * [aries_cloudagent.indy.models.cred_abstract module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-cred-abstract-module)


            * [aries_cloudagent.indy.models.cred_def module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-cred-def-module)


            * [aries_cloudagent.indy.models.cred_precis module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-cred-precis-module)


            * [aries_cloudagent.indy.models.cred_request module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-cred-request-module)


            * [aries_cloudagent.indy.models.non_rev_interval module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-non-rev-interval-module)


            * [aries_cloudagent.indy.models.predicate module](aries_cloudagent.indy.models.md#module-aries_cloudagent.indy.models.predicate)


            * [aries_cloudagent.indy.models.pres_preview module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-pres-preview-module)


            * [aries_cloudagent.indy.models.proof module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-proof-module)


            * [aries_cloudagent.indy.models.proof_request module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-proof-request-module)


            * [aries_cloudagent.indy.models.requested_creds module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-requested-creds-module)


            * [aries_cloudagent.indy.models.revocation module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-revocation-module)


            * [aries_cloudagent.indy.models.schema module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-schema-module)


            * [aries_cloudagent.indy.models.xform module](aries_cloudagent.indy.models.md#aries-cloudagent-indy-models-xform-module)


        * [aries_cloudagent.indy.sdk package](aries_cloudagent.indy.sdk.md)


            * [Submodules](aries_cloudagent.indy.sdk.md#submodules)


            * [aries_cloudagent.indy.sdk.error module](aries_cloudagent.indy.sdk.md#module-aries_cloudagent.indy.sdk.error)


            * [aries_cloudagent.indy.sdk.holder module](aries_cloudagent.indy.sdk.md#module-aries_cloudagent.indy.sdk.holder)


            * [aries_cloudagent.indy.sdk.issuer module](aries_cloudagent.indy.sdk.md#aries-cloudagent-indy-sdk-issuer-module)


            * [aries_cloudagent.indy.sdk.profile module](aries_cloudagent.indy.sdk.md#aries-cloudagent-indy-sdk-profile-module)


            * [aries_cloudagent.indy.sdk.util module](aries_cloudagent.indy.sdk.md#module-aries_cloudagent.indy.sdk.util)


            * [aries_cloudagent.indy.sdk.verifier module](aries_cloudagent.indy.sdk.md#aries-cloudagent-indy-sdk-verifier-module)


            * [aries_cloudagent.indy.sdk.wallet_plugin module](aries_cloudagent.indy.sdk.md#module-aries_cloudagent.indy.sdk.wallet_plugin)


            * [aries_cloudagent.indy.sdk.wallet_setup module](aries_cloudagent.indy.sdk.md#module-aries_cloudagent.indy.sdk.wallet_setup)


    * [Submodules](aries_cloudagent.indy.md#submodules)


    * [aries_cloudagent.indy.holder module](aries_cloudagent.indy.md#module-aries_cloudagent.indy.holder)


        * [`IndyHolder`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder)


            * [`IndyHolder.CHUNK`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.CHUNK)


            * [`IndyHolder.RECORD_TYPE_MIME_TYPES`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.RECORD_TYPE_MIME_TYPES)


            * [`IndyHolder.create_credential_request()`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.create_credential_request)


            * [`IndyHolder.create_presentation()`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.create_presentation)


            * [`IndyHolder.create_revocation_state()`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.create_revocation_state)


            * [`IndyHolder.credential_revoked()`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.credential_revoked)


            * [`IndyHolder.delete_credential()`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.delete_credential)


            * [`IndyHolder.get_credential()`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.get_credential)


            * [`IndyHolder.get_mime_type()`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.get_mime_type)


            * [`IndyHolder.store_credential()`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolder.store_credential)


        * [`IndyHolderError`](aries_cloudagent.indy.md#aries_cloudagent.indy.holder.IndyHolderError)


    * [aries_cloudagent.indy.issuer module](aries_cloudagent.indy.md#module-aries_cloudagent.indy.issuer)


        * [`IndyIssuer`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer)


            * [`IndyIssuer.create_and_store_credential_definition()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.create_and_store_credential_definition)


            * [`IndyIssuer.create_and_store_revocation_registry()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.create_and_store_revocation_registry)


            * [`IndyIssuer.create_credential()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.create_credential)


            * [`IndyIssuer.create_credential_offer()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.create_credential_offer)


            * [`IndyIssuer.create_schema()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.create_schema)


            * [`IndyIssuer.credential_definition_in_wallet()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.credential_definition_in_wallet)


            * [`IndyIssuer.make_credential_definition_id()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.make_credential_definition_id)


            * [`IndyIssuer.make_schema_id()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.make_schema_id)


            * [`IndyIssuer.merge_revocation_registry_deltas()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.merge_revocation_registry_deltas)


            * [`IndyIssuer.revoke_credentials()`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuer.revoke_credentials)


        * [`IndyIssuerError`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuerError)


        * [`IndyIssuerRevocationRegistryFullError`](aries_cloudagent.indy.md#aries_cloudagent.indy.issuer.IndyIssuerRevocationRegistryFullError)


    * [aries_cloudagent.indy.util module](aries_cloudagent.indy.md#module-aries_cloudagent.indy.util)


        * [`generate_pr_nonce()`](aries_cloudagent.indy.md#aries_cloudagent.indy.util.generate_pr_nonce)


        * [`indy_client_dir()`](aries_cloudagent.indy.md#aries_cloudagent.indy.util.indy_client_dir)


    * [aries_cloudagent.indy.verifier module](aries_cloudagent.indy.md#aries-cloudagent-indy-verifier-module)


* [aries_cloudagent.ledger package](aries_cloudagent.ledger.md)


    * [Subpackages](aries_cloudagent.ledger.md#subpackages)


        * [aries_cloudagent.ledger.merkel_validation package](aries_cloudagent.ledger.merkel_validation.md)


            * [Submodules](aries_cloudagent.ledger.merkel_validation.md#submodules)


            * [aries_cloudagent.ledger.merkel_validation.constants module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.constants)


            * [aries_cloudagent.ledger.merkel_validation.domain_txn_handler module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.domain_txn_handler)


            * [aries_cloudagent.ledger.merkel_validation.hasher module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.hasher)


            * [aries_cloudagent.ledger.merkel_validation.merkel_verifier module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.merkel_verifier)


            * [aries_cloudagent.ledger.merkel_validation.trie module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.trie)


            * [aries_cloudagent.ledger.merkel_validation.utils module](aries_cloudagent.ledger.merkel_validation.md#module-aries_cloudagent.ledger.merkel_validation.utils)


        * [aries_cloudagent.ledger.multiple_ledger package](aries_cloudagent.ledger.multiple_ledger.md)


            * [Submodules](aries_cloudagent.ledger.multiple_ledger.md#submodules)


            * [aries_cloudagent.ledger.multiple_ledger.base_manager module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-base-manager-module)


            * [aries_cloudagent.ledger.multiple_ledger.indy_manager module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-indy-manager-module)


            * [aries_cloudagent.ledger.multiple_ledger.indy_vdr_manager module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-indy-vdr-manager-module)


            * [aries_cloudagent.ledger.multiple_ledger.ledger_config_schema module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-ledger-config-schema-module)


            * [aries_cloudagent.ledger.multiple_ledger.ledger_requests_executor module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-ledger-requests-executor-module)


            * [aries_cloudagent.ledger.multiple_ledger.manager_provider module](aries_cloudagent.ledger.multiple_ledger.md#aries-cloudagent-ledger-multiple-ledger-manager-provider-module)


    * [Submodules](aries_cloudagent.ledger.md#submodules)


    * [aries_cloudagent.ledger.base module](aries_cloudagent.ledger.md#module-aries_cloudagent.ledger.base)


        * [`BaseLedger`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger)


            * [`BaseLedger.BACKEND_NAME`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.BACKEND_NAME)


            * [`BaseLedger.accept_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.accept_txn_author_agreement)


            * [`BaseLedger.backend`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.backend)


            * [`BaseLedger.check_existing_schema()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.check_existing_schema)


            * [`BaseLedger.create_and_send_credential_definition()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.create_and_send_credential_definition)


            * [`BaseLedger.create_and_send_schema()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.create_and_send_schema)


            * [`BaseLedger.did_to_nym()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.did_to_nym)


            * [`BaseLedger.fetch_schema_by_id()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.fetch_schema_by_id)


            * [`BaseLedger.fetch_schema_by_seq_no()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.fetch_schema_by_seq_no)


            * [`BaseLedger.fetch_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.fetch_txn_author_agreement)


            * [`BaseLedger.get_all_endpoints_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_all_endpoints_for_did)


            * [`BaseLedger.get_credential_definition()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_credential_definition)


            * [`BaseLedger.get_endpoint_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_endpoint_for_did)


            * [`BaseLedger.get_key_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_key_for_did)


            * [`BaseLedger.get_latest_txn_author_acceptance()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_latest_txn_author_acceptance)


            * [`BaseLedger.get_nym_role()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_nym_role)


            * [`BaseLedger.get_revoc_reg_def()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_revoc_reg_def)


            * [`BaseLedger.get_revoc_reg_delta()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_revoc_reg_delta)


            * [`BaseLedger.get_revoc_reg_entry()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_revoc_reg_entry)


            * [`BaseLedger.get_schema()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_schema)


            * [`BaseLedger.get_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_txn_author_agreement)


            * [`BaseLedger.get_wallet_public_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.get_wallet_public_did)


            * [`BaseLedger.is_ledger_read_only()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.is_ledger_read_only)


            * [`BaseLedger.nym_to_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.nym_to_did)


            * [`BaseLedger.read_only`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.read_only)


            * [`BaseLedger.register_nym()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.register_nym)


            * [`BaseLedger.rotate_public_did_keypair()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.rotate_public_did_keypair)


            * [`BaseLedger.send_revoc_reg_def()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.send_revoc_reg_def)


            * [`BaseLedger.send_revoc_reg_entry()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.send_revoc_reg_entry)


            * [`BaseLedger.taa_digest()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.taa_digest)


            * [`BaseLedger.txn_endorse()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.txn_endorse)


            * [`BaseLedger.txn_submit()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.txn_submit)


            * [`BaseLedger.update_endpoint_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.BaseLedger.update_endpoint_for_did)


        * [`Role`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role)


            * [`Role.ENDORSER`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.ENDORSER)


            * [`Role.NETWORK_MONITOR`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.NETWORK_MONITOR)


            * [`Role.ROLE_REMOVE`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.ROLE_REMOVE)


            * [`Role.STEWARD`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.STEWARD)


            * [`Role.TRUSTEE`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.TRUSTEE)


            * [`Role.USER`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.USER)


            * [`Role.get()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.get)


            * [`Role.to_indy_num_str()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.to_indy_num_str)


            * [`Role.token()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.base.Role.token)


    * [aries_cloudagent.ledger.endpoint_type module](aries_cloudagent.ledger.md#module-aries_cloudagent.ledger.endpoint_type)


        * [`EndpointType`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointType)


            * [`EndpointType.ENDPOINT`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointType.ENDPOINT)


            * [`EndpointType.LINKED_DOMAINS`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointType.LINKED_DOMAINS)


            * [`EndpointType.PROFILE`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointType.PROFILE)


            * [`EndpointType.get()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointType.get)


            * [`EndpointType.indy`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointType.indy)


            * [`EndpointType.w3c`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointType.w3c)


        * [`EndpointTypeName`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointTypeName)


            * [`EndpointTypeName.indy`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointTypeName.indy)


            * [`EndpointTypeName.w3c`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.endpoint_type.EndpointTypeName.w3c)


    * [aries_cloudagent.ledger.error module](aries_cloudagent.ledger.md#module-aries_cloudagent.ledger.error)


        * [`BadLedgerRequestError`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.error.BadLedgerRequestError)


        * [`ClosedPoolError`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.error.ClosedPoolError)


        * [`LedgerConfigError`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.error.LedgerConfigError)


        * [`LedgerError`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.error.LedgerError)


        * [`LedgerTransactionError`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.error.LedgerTransactionError)


    * [aries_cloudagent.ledger.indy module](aries_cloudagent.ledger.md#module-aries_cloudagent.ledger.indy)


        * [`IndySdkLedger`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger)


            * [`IndySdkLedger.BACKEND_NAME`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.BACKEND_NAME)


            * [`IndySdkLedger.accept_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.accept_txn_author_agreement)


            * [`IndySdkLedger.build_and_return_get_nym_request()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.build_and_return_get_nym_request)


            * [`IndySdkLedger.credential_definition_id2schema_id()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.credential_definition_id2schema_id)


            * [`IndySdkLedger.fetch_credential_definition()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.fetch_credential_definition)


            * [`IndySdkLedger.fetch_schema_by_id()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.fetch_schema_by_id)


            * [`IndySdkLedger.fetch_schema_by_seq_no()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.fetch_schema_by_seq_no)


            * [`IndySdkLedger.fetch_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.fetch_txn_author_agreement)


            * [`IndySdkLedger.get_all_endpoints_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_all_endpoints_for_did)


            * [`IndySdkLedger.get_credential_definition()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_credential_definition)


            * [`IndySdkLedger.get_endpoint_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_endpoint_for_did)


            * [`IndySdkLedger.get_indy_storage()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_indy_storage)


            * [`IndySdkLedger.get_key_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_key_for_did)


            * [`IndySdkLedger.get_latest_txn_author_acceptance()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_latest_txn_author_acceptance)


            * [`IndySdkLedger.get_nym_role()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_nym_role)


            * [`IndySdkLedger.get_revoc_reg_def()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_revoc_reg_def)


            * [`IndySdkLedger.get_revoc_reg_delta()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_revoc_reg_delta)


            * [`IndySdkLedger.get_revoc_reg_entry()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_revoc_reg_entry)


            * [`IndySdkLedger.get_schema()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_schema)


            * [`IndySdkLedger.get_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_txn_author_agreement)


            * [`IndySdkLedger.get_wallet_public_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.get_wallet_public_did)


            * [`IndySdkLedger.is_ledger_read_only()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.is_ledger_read_only)


            * [`IndySdkLedger.nym_to_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.nym_to_did)


            * [`IndySdkLedger.pool_handle`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.pool_handle)


            * [`IndySdkLedger.pool_name`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.pool_name)


            * [`IndySdkLedger.read_only`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.read_only)


            * [`IndySdkLedger.register_nym()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.register_nym)


            * [`IndySdkLedger.rotate_public_did_keypair()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.rotate_public_did_keypair)


            * [`IndySdkLedger.send_revoc_reg_def()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.send_revoc_reg_def)


            * [`IndySdkLedger.send_revoc_reg_entry()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.send_revoc_reg_entry)


            * [`IndySdkLedger.submit_get_nym_request()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.submit_get_nym_request)


            * [`IndySdkLedger.taa_rough_timestamp()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.taa_rough_timestamp)


            * [`IndySdkLedger.txn_endorse()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.txn_endorse)


            * [`IndySdkLedger.txn_submit()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.txn_submit)


            * [`IndySdkLedger.update_endpoint_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedger.update_endpoint_for_did)


        * [`IndySdkLedgerPool`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPool)


            * [`IndySdkLedgerPool.check_pool_config()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPool.check_pool_config)


            * [`IndySdkLedgerPool.close()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPool.close)


            * [`IndySdkLedgerPool.context_close()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPool.context_close)


            * [`IndySdkLedgerPool.context_open()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPool.context_open)


            * [`IndySdkLedgerPool.create_pool_config()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPool.create_pool_config)


            * [`IndySdkLedgerPool.genesis_txns`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPool.genesis_txns)


            * [`IndySdkLedgerPool.open()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPool.open)


        * [`IndySdkLedgerPoolProvider`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPoolProvider)


            * [`IndySdkLedgerPoolProvider.provide()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy.IndySdkLedgerPoolProvider.provide)


    * [aries_cloudagent.ledger.indy_vdr module](aries_cloudagent.ledger.md#module-aries_cloudagent.ledger.indy_vdr)


        * [`IndyVdrLedger`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger)


            * [`IndyVdrLedger.BACKEND_NAME`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.BACKEND_NAME)


            * [`IndyVdrLedger.accept_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.accept_txn_author_agreement)


            * [`IndyVdrLedger.build_and_return_get_nym_request()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.build_and_return_get_nym_request)


            * [`IndyVdrLedger.credential_definition_id2schema_id()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.credential_definition_id2schema_id)


            * [`IndyVdrLedger.fetch_credential_definition()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.fetch_credential_definition)


            * [`IndyVdrLedger.fetch_schema_by_id()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.fetch_schema_by_id)


            * [`IndyVdrLedger.fetch_schema_by_seq_no()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.fetch_schema_by_seq_no)


            * [`IndyVdrLedger.fetch_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.fetch_txn_author_agreement)


            * [`IndyVdrLedger.get_all_endpoints_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_all_endpoints_for_did)


            * [`IndyVdrLedger.get_credential_definition()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_credential_definition)


            * [`IndyVdrLedger.get_endpoint_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_endpoint_for_did)


            * [`IndyVdrLedger.get_key_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_key_for_did)


            * [`IndyVdrLedger.get_latest_txn_author_acceptance()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_latest_txn_author_acceptance)


            * [`IndyVdrLedger.get_nym_role()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_nym_role)


            * [`IndyVdrLedger.get_revoc_reg_def()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_revoc_reg_def)


            * [`IndyVdrLedger.get_revoc_reg_delta()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_revoc_reg_delta)


            * [`IndyVdrLedger.get_revoc_reg_entry()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_revoc_reg_entry)


            * [`IndyVdrLedger.get_schema()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_schema)


            * [`IndyVdrLedger.get_txn_author_agreement()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_txn_author_agreement)


            * [`IndyVdrLedger.get_wallet_public_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.get_wallet_public_did)


            * [`IndyVdrLedger.is_ledger_read_only()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.is_ledger_read_only)


            * [`IndyVdrLedger.nym_to_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.nym_to_did)


            * [`IndyVdrLedger.pool_handle`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.pool_handle)


            * [`IndyVdrLedger.pool_name`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.pool_name)


            * [`IndyVdrLedger.read_only`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.read_only)


            * [`IndyVdrLedger.register_nym()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.register_nym)


            * [`IndyVdrLedger.rotate_public_did_keypair()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.rotate_public_did_keypair)


            * [`IndyVdrLedger.send_revoc_reg_def()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.send_revoc_reg_def)


            * [`IndyVdrLedger.send_revoc_reg_entry()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.send_revoc_reg_entry)


            * [`IndyVdrLedger.submit_get_nym_request()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.submit_get_nym_request)


            * [`IndyVdrLedger.taa_rough_timestamp()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.taa_rough_timestamp)


            * [`IndyVdrLedger.txn_endorse()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.txn_endorse)


            * [`IndyVdrLedger.txn_submit()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.txn_submit)


            * [`IndyVdrLedger.update_endpoint_for_did()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedger.update_endpoint_for_did)


        * [`IndyVdrLedgerPool`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool)


            * [`IndyVdrLedgerPool.cfg_path`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool.cfg_path)


            * [`IndyVdrLedgerPool.close()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool.close)


            * [`IndyVdrLedgerPool.context_close()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool.context_close)


            * [`IndyVdrLedgerPool.context_open()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool.context_open)


            * [`IndyVdrLedgerPool.create_pool_config()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool.create_pool_config)


            * [`IndyVdrLedgerPool.genesis_hash`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool.genesis_hash)


            * [`IndyVdrLedgerPool.genesis_txns`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool.genesis_txns)


            * [`IndyVdrLedgerPool.open()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.indy_vdr.IndyVdrLedgerPool.open)


    * [aries_cloudagent.ledger.routes module](aries_cloudagent.ledger.md#aries-cloudagent-ledger-routes-module)


    * [aries_cloudagent.ledger.util module](aries_cloudagent.ledger.md#module-aries_cloudagent.ledger.util)


        * [`notify_register_did_event()`](aries_cloudagent.ledger.md#aries_cloudagent.ledger.util.notify_register_did_event)


* [aries_cloudagent.messaging package](aries_cloudagent.messaging.md)


    * [Subpackages](aries_cloudagent.messaging.md#subpackages)


        * [aries_cloudagent.messaging.credential_definitions package](aries_cloudagent.messaging.credential_definitions.md)


            * [Submodules](aries_cloudagent.messaging.credential_definitions.md#submodules)


            * [aries_cloudagent.messaging.credential_definitions.routes module](aries_cloudagent.messaging.credential_definitions.md#aries-cloudagent-messaging-credential-definitions-routes-module)


            * [aries_cloudagent.messaging.credential_definitions.util module](aries_cloudagent.messaging.credential_definitions.md#aries-cloudagent-messaging-credential-definitions-util-module)


        * [aries_cloudagent.messaging.decorators package](aries_cloudagent.messaging.decorators.md)


            * [Submodules](aries_cloudagent.messaging.decorators.md#submodules)


            * [aries_cloudagent.messaging.decorators.attach_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-attach-decorator-module)


            * [aries_cloudagent.messaging.decorators.base module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-base-module)


            * [aries_cloudagent.messaging.decorators.default module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-default-module)


            * [aries_cloudagent.messaging.decorators.localization_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-localization-decorator-module)


            * [aries_cloudagent.messaging.decorators.please_ack_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-please-ack-decorator-module)


            * [aries_cloudagent.messaging.decorators.service_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-service-decorator-module)


            * [aries_cloudagent.messaging.decorators.signature_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-signature-decorator-module)


            * [aries_cloudagent.messaging.decorators.thread_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-thread-decorator-module)


            * [aries_cloudagent.messaging.decorators.timing_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-timing-decorator-module)


            * [aries_cloudagent.messaging.decorators.trace_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-trace-decorator-module)


            * [aries_cloudagent.messaging.decorators.transport_decorator module](aries_cloudagent.messaging.decorators.md#aries-cloudagent-messaging-decorators-transport-decorator-module)


        * [aries_cloudagent.messaging.jsonld package](aries_cloudagent.messaging.jsonld.md)


            * [Submodules](aries_cloudagent.messaging.jsonld.md#submodules)


            * [aries_cloudagent.messaging.jsonld.create_verify_data module](aries_cloudagent.messaging.jsonld.md#module-aries_cloudagent.messaging.jsonld.create_verify_data)


            * [aries_cloudagent.messaging.jsonld.credential module](aries_cloudagent.messaging.jsonld.md#aries-cloudagent-messaging-jsonld-credential-module)


            * [aries_cloudagent.messaging.jsonld.error module](aries_cloudagent.messaging.jsonld.md#module-aries_cloudagent.messaging.jsonld.error)


            * [aries_cloudagent.messaging.jsonld.routes module](aries_cloudagent.messaging.jsonld.md#aries-cloudagent-messaging-jsonld-routes-module)


        * [aries_cloudagent.messaging.models package](aries_cloudagent.messaging.models.md)


            * [Submodules](aries_cloudagent.messaging.models.md#submodules)


            * [aries_cloudagent.messaging.models.base module](aries_cloudagent.messaging.models.md#aries-cloudagent-messaging-models-base-module)


            * [aries_cloudagent.messaging.models.base_record module](aries_cloudagent.messaging.models.md#aries-cloudagent-messaging-models-base-record-module)


            * [aries_cloudagent.messaging.models.openapi module](aries_cloudagent.messaging.models.md#aries-cloudagent-messaging-models-openapi-module)


        * [aries_cloudagent.messaging.schemas package](aries_cloudagent.messaging.schemas.md)


            * [Submodules](aries_cloudagent.messaging.schemas.md#submodules)


            * [aries_cloudagent.messaging.schemas.routes module](aries_cloudagent.messaging.schemas.md#aries-cloudagent-messaging-schemas-routes-module)


            * [aries_cloudagent.messaging.schemas.util module](aries_cloudagent.messaging.schemas.md#aries-cloudagent-messaging-schemas-util-module)


    * [Submodules](aries_cloudagent.messaging.md#submodules)


    * [aries_cloudagent.messaging.agent_message module](aries_cloudagent.messaging.md#aries-cloudagent-messaging-agent-message-module)


    * [aries_cloudagent.messaging.base_handler module](aries_cloudagent.messaging.md#aries-cloudagent-messaging-base-handler-module)


    * [aries_cloudagent.messaging.base_message module](aries_cloudagent.messaging.md#module-aries_cloudagent.messaging.base_message)


        * [`BaseMessage`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.base_message.BaseMessage)


            * [`BaseMessage.Handler`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.base_message.BaseMessage.Handler)


            * [`BaseMessage.deserialize()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.base_message.BaseMessage.deserialize)


            * [`BaseMessage.serialize()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.base_message.BaseMessage.serialize)


        * [`DIDCommVersion`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.base_message.DIDCommVersion)


            * [`DIDCommVersion.v1`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.base_message.DIDCommVersion.v1)


            * [`DIDCommVersion.v2`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.base_message.DIDCommVersion.v2)


    * [aries_cloudagent.messaging.error module](aries_cloudagent.messaging.md#module-aries_cloudagent.messaging.error)


        * [`MessageParseError`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.error.MessageParseError)


            * [`MessageParseError.error_code`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.error.MessageParseError.error_code)


        * [`MessagePrepareError`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.error.MessagePrepareError)


            * [`MessagePrepareError.error_code`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.error.MessagePrepareError.error_code)


    * [aries_cloudagent.messaging.request_context module](aries_cloudagent.messaging.md#aries-cloudagent-messaging-request-context-module)


    * [aries_cloudagent.messaging.responder module](aries_cloudagent.messaging.md#aries-cloudagent-messaging-responder-module)


    * [aries_cloudagent.messaging.util module](aries_cloudagent.messaging.md#module-aries_cloudagent.messaging.util)


        * [`canon()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.util.canon)


        * [`datetime_now()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.util.datetime_now)


        * [`datetime_to_str()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.util.datetime_to_str)


        * [`encode()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.util.encode)


        * [`epoch_to_str()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.util.epoch_to_str)


        * [`str_to_datetime()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.util.str_to_datetime)


        * [`str_to_epoch()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.util.str_to_epoch)


        * [`time_now()`](aries_cloudagent.messaging.md#aries_cloudagent.messaging.util.time_now)


    * [aries_cloudagent.messaging.valid module](aries_cloudagent.messaging.md#aries-cloudagent-messaging-valid-module)


* [aries_cloudagent.multitenant package](aries_cloudagent.multitenant.md)


    * [Subpackages](aries_cloudagent.multitenant.md#subpackages)


        * [aries_cloudagent.multitenant.admin package](aries_cloudagent.multitenant.admin.md)


            * [Submodules](aries_cloudagent.multitenant.admin.md#submodules)


            * [aries_cloudagent.multitenant.admin.routes module](aries_cloudagent.multitenant.admin.md#aries-cloudagent-multitenant-admin-routes-module)


    * [Submodules](aries_cloudagent.multitenant.md#submodules)


    * [aries_cloudagent.multitenant.askar_profile_manager module](aries_cloudagent.multitenant.md#aries-cloudagent-multitenant-askar-profile-manager-module)


    * [aries_cloudagent.multitenant.base module](aries_cloudagent.multitenant.md#aries-cloudagent-multitenant-base-module)


    * [aries_cloudagent.multitenant.cache module](aries_cloudagent.multitenant.md#module-aries_cloudagent.multitenant.cache)


        * [`ProfileCache`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.cache.ProfileCache)


            * [`ProfileCache.get()`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.cache.ProfileCache.get)


            * [`ProfileCache.has()`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.cache.ProfileCache.has)


            * [`ProfileCache.put()`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.cache.ProfileCache.put)


            * [`ProfileCache.remove()`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.cache.ProfileCache.remove)


    * [aries_cloudagent.multitenant.error module](aries_cloudagent.multitenant.md#module-aries_cloudagent.multitenant.error)


        * [`WalletKeyMissingError`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.error.WalletKeyMissingError)


    * [aries_cloudagent.multitenant.manager module](aries_cloudagent.multitenant.md#aries-cloudagent-multitenant-manager-module)


    * [aries_cloudagent.multitenant.manager_provider module](aries_cloudagent.multitenant.md#module-aries_cloudagent.multitenant.manager_provider)


        * [`MultitenantManagerProvider`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.manager_provider.MultitenantManagerProvider)


            * [`MultitenantManagerProvider.MANAGER_TYPES`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.manager_provider.MultitenantManagerProvider.MANAGER_TYPES)


            * [`MultitenantManagerProvider.askar_profile_manager_path`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.manager_provider.MultitenantManagerProvider.askar_profile_manager_path)


            * [`MultitenantManagerProvider.provide()`](aries_cloudagent.multitenant.md#aries_cloudagent.multitenant.manager_provider.MultitenantManagerProvider.provide)


    * [aries_cloudagent.multitenant.route_manager module](aries_cloudagent.multitenant.md#aries-cloudagent-multitenant-route-manager-module)


* [aries_cloudagent.protocols package](aries_cloudagent.protocols.md)


    * [Subpackages](aries_cloudagent.protocols.md#subpackages)


        * [aries_cloudagent.protocols.actionmenu package](aries_cloudagent.protocols.actionmenu.md)


            * [Subpackages](aries_cloudagent.protocols.actionmenu.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.actionmenu.md#submodules)


            * [aries_cloudagent.protocols.actionmenu.definition module](aries_cloudagent.protocols.actionmenu.md#module-aries_cloudagent.protocols.actionmenu.definition)


        * [aries_cloudagent.protocols.basicmessage package](aries_cloudagent.protocols.basicmessage.md)


            * [Subpackages](aries_cloudagent.protocols.basicmessage.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.basicmessage.md#submodules)


            * [aries_cloudagent.protocols.basicmessage.definition module](aries_cloudagent.protocols.basicmessage.md#module-aries_cloudagent.protocols.basicmessage.definition)


        * [aries_cloudagent.protocols.connections package](aries_cloudagent.protocols.connections.md)


            * [Subpackages](aries_cloudagent.protocols.connections.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.connections.md#submodules)


            * [aries_cloudagent.protocols.connections.definition module](aries_cloudagent.protocols.connections.md#module-aries_cloudagent.protocols.connections.definition)


        * [aries_cloudagent.protocols.coordinate_mediation package](aries_cloudagent.protocols.coordinate_mediation.md)


            * [Subpackages](aries_cloudagent.protocols.coordinate_mediation.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.coordinate_mediation.md#submodules)


            * [aries_cloudagent.protocols.coordinate_mediation.definition module](aries_cloudagent.protocols.coordinate_mediation.md#module-aries_cloudagent.protocols.coordinate_mediation.definition)


            * [aries_cloudagent.protocols.coordinate_mediation.mediation_invite_store module](aries_cloudagent.protocols.coordinate_mediation.md#module-aries_cloudagent.protocols.coordinate_mediation.mediation_invite_store)


        * [aries_cloudagent.protocols.didexchange package](aries_cloudagent.protocols.didexchange.md)


            * [Subpackages](aries_cloudagent.protocols.didexchange.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.didexchange.md#submodules)


            * [aries_cloudagent.protocols.didexchange.definition module](aries_cloudagent.protocols.didexchange.md#module-aries_cloudagent.protocols.didexchange.definition)


        * [aries_cloudagent.protocols.discovery package](aries_cloudagent.protocols.discovery.md)


            * [Subpackages](aries_cloudagent.protocols.discovery.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.discovery.md#submodules)


            * [aries_cloudagent.protocols.discovery.definition module](aries_cloudagent.protocols.discovery.md#module-aries_cloudagent.protocols.discovery.definition)


        * [aries_cloudagent.protocols.endorse_transaction package](aries_cloudagent.protocols.endorse_transaction.md)


            * [Subpackages](aries_cloudagent.protocols.endorse_transaction.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.endorse_transaction.md#submodules)


            * [aries_cloudagent.protocols.endorse_transaction.definition module](aries_cloudagent.protocols.endorse_transaction.md#module-aries_cloudagent.protocols.endorse_transaction.definition)


        * [aries_cloudagent.protocols.introduction package](aries_cloudagent.protocols.introduction.md)


            * [Subpackages](aries_cloudagent.protocols.introduction.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.introduction.md#submodules)


            * [aries_cloudagent.protocols.introduction.definition module](aries_cloudagent.protocols.introduction.md#module-aries_cloudagent.protocols.introduction.definition)


        * [aries_cloudagent.protocols.issue_credential package](aries_cloudagent.protocols.issue_credential.md)


            * [Subpackages](aries_cloudagent.protocols.issue_credential.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.issue_credential.md#submodules)


            * [aries_cloudagent.protocols.issue_credential.definition module](aries_cloudagent.protocols.issue_credential.md#module-aries_cloudagent.protocols.issue_credential.definition)


        * [aries_cloudagent.protocols.notification package](aries_cloudagent.protocols.notification.md)


            * [Subpackages](aries_cloudagent.protocols.notification.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.notification.md#submodules)


            * [aries_cloudagent.protocols.notification.definition module](aries_cloudagent.protocols.notification.md#module-aries_cloudagent.protocols.notification.definition)


        * [aries_cloudagent.protocols.out_of_band package](aries_cloudagent.protocols.out_of_band.md)


            * [Subpackages](aries_cloudagent.protocols.out_of_band.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.out_of_band.md#submodules)


            * [aries_cloudagent.protocols.out_of_band.definition module](aries_cloudagent.protocols.out_of_band.md#module-aries_cloudagent.protocols.out_of_band.definition)


        * [aries_cloudagent.protocols.present_proof package](aries_cloudagent.protocols.present_proof.md)


            * [Subpackages](aries_cloudagent.protocols.present_proof.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.present_proof.md#submodules)


            * [aries_cloudagent.protocols.present_proof.definition module](aries_cloudagent.protocols.present_proof.md#module-aries_cloudagent.protocols.present_proof.definition)


        * [aries_cloudagent.protocols.problem_report package](aries_cloudagent.protocols.problem_report.md)


            * [Subpackages](aries_cloudagent.protocols.problem_report.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.problem_report.md#submodules)


            * [aries_cloudagent.protocols.problem_report.definition module](aries_cloudagent.protocols.problem_report.md#module-aries_cloudagent.protocols.problem_report.definition)


        * [aries_cloudagent.protocols.revocation_notification package](aries_cloudagent.protocols.revocation_notification.md)


            * [Subpackages](aries_cloudagent.protocols.revocation_notification.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.revocation_notification.md#submodules)


            * [aries_cloudagent.protocols.revocation_notification.definition module](aries_cloudagent.protocols.revocation_notification.md#module-aries_cloudagent.protocols.revocation_notification.definition)


        * [aries_cloudagent.protocols.routing package](aries_cloudagent.protocols.routing.md)


            * [Subpackages](aries_cloudagent.protocols.routing.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.routing.md#submodules)


            * [aries_cloudagent.protocols.routing.definition module](aries_cloudagent.protocols.routing.md#module-aries_cloudagent.protocols.routing.definition)


        * [aries_cloudagent.protocols.trustping package](aries_cloudagent.protocols.trustping.md)


            * [Subpackages](aries_cloudagent.protocols.trustping.md#subpackages)


            * [Submodules](aries_cloudagent.protocols.trustping.md#submodules)


            * [aries_cloudagent.protocols.trustping.definition module](aries_cloudagent.protocols.trustping.md#module-aries_cloudagent.protocols.trustping.definition)


    * [Submodules](aries_cloudagent.protocols.md#submodules)


    * [aries_cloudagent.protocols.didcomm_prefix module](aries_cloudagent.protocols.md#module-aries_cloudagent.protocols.didcomm_prefix)


        * [`DIDCommPrefix`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.DIDCommPrefix)


            * [`DIDCommPrefix.NEW`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.DIDCommPrefix.NEW)


            * [`DIDCommPrefix.OLD`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.DIDCommPrefix.OLD)


            * [`DIDCommPrefix.qualify()`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.DIDCommPrefix.qualify)


            * [`DIDCommPrefix.qualify_all()`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.DIDCommPrefix.qualify_all)


            * [`DIDCommPrefix.qualify_current()`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.DIDCommPrefix.qualify_current)


            * [`DIDCommPrefix.set()`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.DIDCommPrefix.set)


            * [`DIDCommPrefix.unqualify()`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.DIDCommPrefix.unqualify)


        * [`qualify()`](aries_cloudagent.protocols.md#aries_cloudagent.protocols.didcomm_prefix.qualify)


* [aries_cloudagent.resolver package](aries_cloudagent.resolver.md)


    * [`setup()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.setup)


    * [Subpackages](aries_cloudagent.resolver.md#subpackages)


        * [aries_cloudagent.resolver.default package](aries_cloudagent.resolver.default.md)


            * [Submodules](aries_cloudagent.resolver.default.md#submodules)


            * [aries_cloudagent.resolver.default.indy module](aries_cloudagent.resolver.default.md#aries-cloudagent-resolver-default-indy-module)


            * [aries_cloudagent.resolver.default.key module](aries_cloudagent.resolver.default.md#aries-cloudagent-resolver-default-key-module)


            * [aries_cloudagent.resolver.default.universal module](aries_cloudagent.resolver.default.md#module-aries_cloudagent.resolver.default.universal)


            * [aries_cloudagent.resolver.default.web module](aries_cloudagent.resolver.default.md#aries-cloudagent-resolver-default-web-module)


    * [Submodules](aries_cloudagent.resolver.md#submodules)


    * [aries_cloudagent.resolver.base module](aries_cloudagent.resolver.md#module-aries_cloudagent.resolver.base)


        * [`BaseDIDResolver`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.BaseDIDResolver)


            * [`BaseDIDResolver.native`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.BaseDIDResolver.native)


            * [`BaseDIDResolver.resolve()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.BaseDIDResolver.resolve)


            * [`BaseDIDResolver.setup()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.BaseDIDResolver.setup)


            * [`BaseDIDResolver.supported_did_regex`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.BaseDIDResolver.supported_did_regex)


            * [`BaseDIDResolver.supported_methods`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.BaseDIDResolver.supported_methods)


            * [`BaseDIDResolver.supports()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.BaseDIDResolver.supports)


        * [`DIDMethodNotSupported`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.DIDMethodNotSupported)


        * [`DIDNotFound`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.DIDNotFound)


        * [`ResolutionMetadata`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolutionMetadata)


            * [`ResolutionMetadata.duration`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolutionMetadata.duration)


            * [`ResolutionMetadata.resolver`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolutionMetadata.resolver)


            * [`ResolutionMetadata.resolver_type`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolutionMetadata.resolver_type)


            * [`ResolutionMetadata.retrieved_time`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolutionMetadata.retrieved_time)


            * [`ResolutionMetadata.serialize()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolutionMetadata.serialize)


        * [`ResolutionResult`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolutionResult)


            * [`ResolutionResult.serialize()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolutionResult.serialize)


        * [`ResolverError`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolverError)


        * [`ResolverType`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolverType)


            * [`ResolverType.NATIVE`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolverType.NATIVE)


            * [`ResolverType.NON_NATIVE`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.base.ResolverType.NON_NATIVE)


    * [aries_cloudagent.resolver.did_resolver module](aries_cloudagent.resolver.md#module-aries_cloudagent.resolver.did_resolver)


        * [`DIDResolver`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.did_resolver.DIDResolver)


            * [`DIDResolver.dereference()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.did_resolver.DIDResolver.dereference)


            * [`DIDResolver.register_resolver()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.did_resolver.DIDResolver.register_resolver)


            * [`DIDResolver.resolve()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.did_resolver.DIDResolver.resolve)


            * [`DIDResolver.resolve_with_metadata()`](aries_cloudagent.resolver.md#aries_cloudagent.resolver.did_resolver.DIDResolver.resolve_with_metadata)


    * [aries_cloudagent.resolver.routes module](aries_cloudagent.resolver.md#aries-cloudagent-resolver-routes-module)


* [aries_cloudagent.revocation package](aries_cloudagent.revocation.md)


    * [Subpackages](aries_cloudagent.revocation.md#subpackages)


        * [aries_cloudagent.revocation.models package](aries_cloudagent.revocation.models.md)


            * [Submodules](aries_cloudagent.revocation.models.md#submodules)


            * [aries_cloudagent.revocation.models.indy module](aries_cloudagent.revocation.models.md#aries-cloudagent-revocation-models-indy-module)


            * [aries_cloudagent.revocation.models.issuer_cred_rev_record module](aries_cloudagent.revocation.models.md#aries-cloudagent-revocation-models-issuer-cred-rev-record-module)


            * [aries_cloudagent.revocation.models.issuer_rev_reg_record module](aries_cloudagent.revocation.models.md#aries-cloudagent-revocation-models-issuer-rev-reg-record-module)


            * [aries_cloudagent.revocation.models.revocation_registry module](aries_cloudagent.revocation.models.md#module-aries_cloudagent.revocation.models.revocation_registry)


    * [Submodules](aries_cloudagent.revocation.md#submodules)


    * [aries_cloudagent.revocation.error module](aries_cloudagent.revocation.md#module-aries_cloudagent.revocation.error)


        * [`RevocationError`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.error.RevocationError)


        * [`RevocationNotSupportedError`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.error.RevocationNotSupportedError)


        * [`RevocationRegistryBadSizeError`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.error.RevocationRegistryBadSizeError)


    * [aries_cloudagent.revocation.indy module](aries_cloudagent.revocation.md#aries-cloudagent-revocation-indy-module)


    * [aries_cloudagent.revocation.manager module](aries_cloudagent.revocation.md#aries-cloudagent-revocation-manager-module)


    * [aries_cloudagent.revocation.recover module](aries_cloudagent.revocation.md#module-aries_cloudagent.revocation.recover)


        * [`LOGGER`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.recover.LOGGER)


        * [`RevocRecoveryException`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.recover.RevocRecoveryException)


        * [`fetch_txns()`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.recover.fetch_txns)


        * [`generate_ledger_rrrecovery_txn()`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.recover.generate_ledger_rrrecovery_txn)


    * [aries_cloudagent.revocation.routes module](aries_cloudagent.revocation.md#aries-cloudagent-revocation-routes-module)


    * [aries_cloudagent.revocation.util module](aries_cloudagent.revocation.md#module-aries_cloudagent.revocation.util)


        * [`notify_pending_cleared_event()`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.util.notify_pending_cleared_event)


        * [`notify_revocation_entry_endorsed_event()`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.util.notify_revocation_entry_endorsed_event)


        * [`notify_revocation_entry_event()`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.util.notify_revocation_entry_event)


        * [`notify_revocation_published_event()`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.util.notify_revocation_published_event)


        * [`notify_revocation_reg_endorsed_event()`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.util.notify_revocation_reg_endorsed_event)


        * [`notify_revocation_reg_init_event()`](aries_cloudagent.revocation.md#aries_cloudagent.revocation.util.notify_revocation_reg_init_event)


* [aries_cloudagent.storage package](aries_cloudagent.storage.md)


    * [Subpackages](aries_cloudagent.storage.md#subpackages)


        * [aries_cloudagent.storage.vc_holder package](aries_cloudagent.storage.vc_holder.md)


            * [Submodules](aries_cloudagent.storage.vc_holder.md#submodules)


            * [aries_cloudagent.storage.vc_holder.askar module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-askar-module)


            * [aries_cloudagent.storage.vc_holder.base module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-base-module)


            * [aries_cloudagent.storage.vc_holder.in_memory module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-in-memory-module)


            * [aries_cloudagent.storage.vc_holder.indy module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-indy-module)


            * [aries_cloudagent.storage.vc_holder.vc_record module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-vc-record-module)


            * [aries_cloudagent.storage.vc_holder.xform module](aries_cloudagent.storage.vc_holder.md#aries-cloudagent-storage-vc-holder-xform-module)


    * [Submodules](aries_cloudagent.storage.md#submodules)


    * [aries_cloudagent.storage.askar module](aries_cloudagent.storage.md#aries-cloudagent-storage-askar-module)


    * [aries_cloudagent.storage.base module](aries_cloudagent.storage.md#module-aries_cloudagent.storage.base)


        * [`BaseStorage`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage)


            * [`BaseStorage.add_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage.add_record)


            * [`BaseStorage.delete_all_records()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage.delete_all_records)


            * [`BaseStorage.delete_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage.delete_record)


            * [`BaseStorage.find_all_records()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage.find_all_records)


            * [`BaseStorage.find_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage.find_record)


            * [`BaseStorage.get_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage.get_record)


            * [`BaseStorage.update_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorage.update_record)


        * [`BaseStorageSearch`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorageSearch)


            * [`BaseStorageSearch.search_records()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorageSearch.search_records)


        * [`BaseStorageSearchSession`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorageSearchSession)


            * [`BaseStorageSearchSession.close()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorageSearchSession.close)


            * [`BaseStorageSearchSession.fetch()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.BaseStorageSearchSession.fetch)


        * [`IterSearch`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.IterSearch)


        * [`validate_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.base.validate_record)


    * [aries_cloudagent.storage.error module](aries_cloudagent.storage.md#module-aries_cloudagent.storage.error)


        * [`StorageDuplicateError`](aries_cloudagent.storage.md#aries_cloudagent.storage.error.StorageDuplicateError)


        * [`StorageError`](aries_cloudagent.storage.md#aries_cloudagent.storage.error.StorageError)


        * [`StorageNotFoundError`](aries_cloudagent.storage.md#aries_cloudagent.storage.error.StorageNotFoundError)


        * [`StorageSearchError`](aries_cloudagent.storage.md#aries_cloudagent.storage.error.StorageSearchError)


    * [aries_cloudagent.storage.in_memory module](aries_cloudagent.storage.md#aries-cloudagent-storage-in-memory-module)


    * [aries_cloudagent.storage.indy module](aries_cloudagent.storage.md#module-aries_cloudagent.storage.indy)


        * [`IndySdkStorage`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage)


            * [`IndySdkStorage.add_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage.add_record)


            * [`IndySdkStorage.delete_all_records()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage.delete_all_records)


            * [`IndySdkStorage.delete_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage.delete_record)


            * [`IndySdkStorage.find_all_records()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage.find_all_records)


            * [`IndySdkStorage.get_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage.get_record)


            * [`IndySdkStorage.search_records()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage.search_records)


            * [`IndySdkStorage.update_record()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage.update_record)


            * [`IndySdkStorage.wallet`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorage.wallet)


        * [`IndySdkStorageSearch`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorageSearch)


            * [`IndySdkStorageSearch.close()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorageSearch.close)


            * [`IndySdkStorageSearch.fetch()`](aries_cloudagent.storage.md#aries_cloudagent.storage.indy.IndySdkStorageSearch.fetch)


    * [aries_cloudagent.storage.record module](aries_cloudagent.storage.md#module-aries_cloudagent.storage.record)


        * [`StorageRecord`](aries_cloudagent.storage.md#aries_cloudagent.storage.record.StorageRecord)


* [aries_cloudagent.tails package](aries_cloudagent.tails.md)


    * [Submodules](aries_cloudagent.tails.md#submodules)


    * [aries_cloudagent.tails.base module](aries_cloudagent.tails.md#module-aries_cloudagent.tails.base)


        * [`BaseTailsServer`](aries_cloudagent.tails.md#aries_cloudagent.tails.base.BaseTailsServer)


            * [`BaseTailsServer.upload_tails_file()`](aries_cloudagent.tails.md#aries_cloudagent.tails.base.BaseTailsServer.upload_tails_file)


    * [aries_cloudagent.tails.error module](aries_cloudagent.tails.md#module-aries_cloudagent.tails.error)


        * [`TailsServerNotConfiguredError`](aries_cloudagent.tails.md#aries_cloudagent.tails.error.TailsServerNotConfiguredError)


    * [aries_cloudagent.tails.indy_tails_server module](aries_cloudagent.tails.md#aries-cloudagent-tails-indy-tails-server-module)


* [aries_cloudagent.transport package](aries_cloudagent.transport.md)


    * [Subpackages](aries_cloudagent.transport.md#subpackages)


        * [aries_cloudagent.transport.inbound package](aries_cloudagent.transport.inbound.md)


            * [Submodules](aries_cloudagent.transport.inbound.md#submodules)


            * [aries_cloudagent.transport.inbound.base module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-base-module)


            * [aries_cloudagent.transport.inbound.delivery_queue module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-delivery-queue-module)


            * [aries_cloudagent.transport.inbound.http module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-http-module)


            * [aries_cloudagent.transport.inbound.manager module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-manager-module)


            * [aries_cloudagent.transport.inbound.message module](aries_cloudagent.transport.inbound.md#module-aries_cloudagent.transport.inbound.message)


            * [aries_cloudagent.transport.inbound.receipt module](aries_cloudagent.transport.inbound.md#module-aries_cloudagent.transport.inbound.receipt)


            * [aries_cloudagent.transport.inbound.session module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-session-module)


            * [aries_cloudagent.transport.inbound.ws module](aries_cloudagent.transport.inbound.md#aries-cloudagent-transport-inbound-ws-module)


        * [aries_cloudagent.transport.outbound package](aries_cloudagent.transport.outbound.md)


            * [Submodules](aries_cloudagent.transport.outbound.md#submodules)


            * [aries_cloudagent.transport.outbound.base module](aries_cloudagent.transport.outbound.md#module-aries_cloudagent.transport.outbound.base)


            * [aries_cloudagent.transport.outbound.http module](aries_cloudagent.transport.outbound.md#module-aries_cloudagent.transport.outbound.http)


            * [aries_cloudagent.transport.outbound.manager module](aries_cloudagent.transport.outbound.md#aries-cloudagent-transport-outbound-manager-module)


            * [aries_cloudagent.transport.outbound.message module](aries_cloudagent.transport.outbound.md#aries-cloudagent-transport-outbound-message-module)


            * [aries_cloudagent.transport.outbound.status module](aries_cloudagent.transport.outbound.md#module-aries_cloudagent.transport.outbound.status)


            * [aries_cloudagent.transport.outbound.ws module](aries_cloudagent.transport.outbound.md#module-aries_cloudagent.transport.outbound.ws)


        * [aries_cloudagent.transport.queue package](aries_cloudagent.transport.queue.md)


            * [Submodules](aries_cloudagent.transport.queue.md#submodules)


            * [aries_cloudagent.transport.queue.base module](aries_cloudagent.transport.queue.md#module-aries_cloudagent.transport.queue.base)


            * [aries_cloudagent.transport.queue.basic module](aries_cloudagent.transport.queue.md#module-aries_cloudagent.transport.queue.basic)


    * [Submodules](aries_cloudagent.transport.md#submodules)


    * [aries_cloudagent.transport.error module](aries_cloudagent.transport.md#module-aries_cloudagent.transport.error)


        * [`RecipientKeysError`](aries_cloudagent.transport.md#aries_cloudagent.transport.error.RecipientKeysError)


        * [`TransportError`](aries_cloudagent.transport.md#aries_cloudagent.transport.error.TransportError)


        * [`WireFormatEncodeError`](aries_cloudagent.transport.md#aries_cloudagent.transport.error.WireFormatEncodeError)


            * [`WireFormatEncodeError.error_code`](aries_cloudagent.transport.md#aries_cloudagent.transport.error.WireFormatEncodeError.error_code)


        * [`WireFormatError`](aries_cloudagent.transport.md#aries_cloudagent.transport.error.WireFormatError)


        * [`WireFormatParseError`](aries_cloudagent.transport.md#aries_cloudagent.transport.error.WireFormatParseError)


            * [`WireFormatParseError.error_code`](aries_cloudagent.transport.md#aries_cloudagent.transport.error.WireFormatParseError.error_code)


    * [aries_cloudagent.transport.pack_format module](aries_cloudagent.transport.md#aries-cloudagent-transport-pack-format-module)


    * [aries_cloudagent.transport.stats module](aries_cloudagent.transport.md#module-aries_cloudagent.transport.stats)


        * [`StatsTracer`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer)


            * [`StatsTracer.connection_queued_end()`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer.connection_queued_end)


            * [`StatsTracer.connection_queued_start()`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer.connection_queued_start)


            * [`StatsTracer.connection_ready()`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer.connection_ready)


            * [`StatsTracer.dns_resolvehost_end()`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer.dns_resolvehost_end)


            * [`StatsTracer.dns_resolvehost_start()`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer.dns_resolvehost_start)


            * [`StatsTracer.request_end()`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer.request_end)


            * [`StatsTracer.request_start()`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer.request_start)


            * [`StatsTracer.socket_connect_start()`](aries_cloudagent.transport.md#aries_cloudagent.transport.stats.StatsTracer.socket_connect_start)


    * [aries_cloudagent.transport.wire_format module](aries_cloudagent.transport.md#module-aries_cloudagent.transport.wire_format)


        * [`BaseWireFormat`](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.BaseWireFormat)


            * [`BaseWireFormat.encode_message()`](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.BaseWireFormat.encode_message)


            * [`BaseWireFormat.get_recipient_keys()`](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.BaseWireFormat.get_recipient_keys)


            * [`BaseWireFormat.parse_message()`](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.BaseWireFormat.parse_message)


        * [`JsonWireFormat`](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.JsonWireFormat)


            * [`JsonWireFormat.encode_message()`](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.JsonWireFormat.encode_message)


            * [`JsonWireFormat.get_recipient_keys()`](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.JsonWireFormat.get_recipient_keys)


            * [`JsonWireFormat.parse_message()`](aries_cloudagent.transport.md#aries_cloudagent.transport.wire_format.JsonWireFormat.parse_message)


* [aries_cloudagent.utils package](aries_cloudagent.utils.md)


    * [Submodules](aries_cloudagent.utils.md#submodules)


    * [aries_cloudagent.utils.classloader module](aries_cloudagent.utils.md#module-aries_cloudagent.utils.classloader)


        * [`ClassLoader`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.ClassLoader)


            * [`ClassLoader.load_class()`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.ClassLoader.load_class)


            * [`ClassLoader.load_module()`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.ClassLoader.load_module)


            * [`ClassLoader.load_subclass_of()`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.ClassLoader.load_subclass_of)


            * [`ClassLoader.scan_subpackages()`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.ClassLoader.scan_subpackages)


        * [`ClassNotFoundError`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.ClassNotFoundError)


        * [`DeferLoad`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.DeferLoad)


            * [`DeferLoad.resolved`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.DeferLoad.resolved)


        * [`ModuleLoadError`](aries_cloudagent.utils.md#aries_cloudagent.utils.classloader.ModuleLoadError)


    * [aries_cloudagent.utils.dependencies module](aries_cloudagent.utils.md#module-aries_cloudagent.utils.dependencies)


        * [`assert_ursa_bbs_signatures_installed()`](aries_cloudagent.utils.md#aries_cloudagent.utils.dependencies.assert_ursa_bbs_signatures_installed)


        * [`is_indy_sdk_module_installed()`](aries_cloudagent.utils.md#aries_cloudagent.utils.dependencies.is_indy_sdk_module_installed)


        * [`is_ursa_bbs_signatures_module_installed()`](aries_cloudagent.utils.md#aries_cloudagent.utils.dependencies.is_ursa_bbs_signatures_module_installed)


    * [aries_cloudagent.utils.env module](aries_cloudagent.utils.md#module-aries_cloudagent.utils.env)


        * [`storage_path()`](aries_cloudagent.utils.md#aries_cloudagent.utils.env.storage_path)


    * [aries_cloudagent.utils.http module](aries_cloudagent.utils.md#aries-cloudagent-utils-http-module)


    * [aries_cloudagent.utils.jwe module](aries_cloudagent.utils.md#aries-cloudagent-utils-jwe-module)


    * [aries_cloudagent.utils.outofband module](aries_cloudagent.utils.md#aries-cloudagent-utils-outofband-module)


    * [aries_cloudagent.utils.repeat module](aries_cloudagent.utils.md#aries-cloudagent-utils-repeat-module)


    * [aries_cloudagent.utils.stats module](aries_cloudagent.utils.md#module-aries_cloudagent.utils.stats)


        * [`Collector`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector)


            * [`Collector.enabled`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.enabled)


            * [`Collector.extract()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.extract)


            * [`Collector.log()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.log)


            * [`Collector.mark()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.mark)


            * [`Collector.reset()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.reset)


            * [`Collector.results`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.results)


            * [`Collector.timer()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.timer)


            * [`Collector.wrap()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.wrap)


            * [`Collector.wrap_coro()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.wrap_coro)


            * [`Collector.wrap_fn()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Collector.wrap_fn)


        * [`Stats`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Stats)


            * [`Stats.extract()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Stats.extract)


            * [`Stats.log()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Stats.log)


        * [`Timer`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Timer)


            * [`Timer.now()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Timer.now)


            * [`Timer.start()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Timer.start)


            * [`Timer.stop()`](aries_cloudagent.utils.md#aries_cloudagent.utils.stats.Timer.stop)


    * [aries_cloudagent.utils.task_queue module](aries_cloudagent.utils.md#module-aries_cloudagent.utils.task_queue)


        * [`CompletedTask`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.CompletedTask)


        * [`PendingTask`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.PendingTask)


            * [`PendingTask.cancel()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.PendingTask.cancel)


            * [`PendingTask.cancelled`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.PendingTask.cancelled)


            * [`PendingTask.task`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.PendingTask.task)


        * [`TaskQueue`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue)


            * [`TaskQueue.add_active()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.add_active)


            * [`TaskQueue.add_pending()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.add_pending)


            * [`TaskQueue.cancel()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.cancel)


            * [`TaskQueue.cancel_pending()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.cancel_pending)


            * [`TaskQueue.cancelled`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.cancelled)


            * [`TaskQueue.complete()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.complete)


            * [`TaskQueue.completed_task()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.completed_task)


            * [`TaskQueue.current_active`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.current_active)


            * [`TaskQueue.current_pending`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.current_pending)


            * [`TaskQueue.current_size`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.current_size)


            * [`TaskQueue.drain()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.drain)


            * [`TaskQueue.flush()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.flush)


            * [`TaskQueue.max_active`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.max_active)


            * [`TaskQueue.put()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.put)


            * [`TaskQueue.ready`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.ready)


            * [`TaskQueue.run()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.run)


            * [`TaskQueue.wait_for()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.TaskQueue.wait_for)


        * [`coro_ident()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.coro_ident)


        * [`coro_timed()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.coro_timed)


        * [`task_exc_info()`](aries_cloudagent.utils.md#aries_cloudagent.utils.task_queue.task_exc_info)


    * [aries_cloudagent.utils.tracing module](aries_cloudagent.utils.md#aries-cloudagent-utils-tracing-module)


* [aries_cloudagent.vc package](aries_cloudagent.vc.md)


    * [Subpackages](aries_cloudagent.vc.md#subpackages)


        * [aries_cloudagent.vc.ld_proofs package](aries_cloudagent.vc.ld_proofs.md)


            * [`AssertionProofPurpose`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.AssertionProofPurpose)


            * [`AuthenticationProofPurpose`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.AuthenticationProofPurpose)


            * [`BbsBlsSignature2020`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.BbsBlsSignature2020)


            * [`BbsBlsSignatureProof2020`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.BbsBlsSignatureProof2020)


            * [`ControllerProofPurpose`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.ControllerProofPurpose)


            * [`CredentialIssuancePurpose`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.CredentialIssuancePurpose)


            * [`DocumentLoader`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.DocumentLoader)


            * [`DocumentVerificationResult`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.DocumentVerificationResult)


            * [`Ed25519Signature2018`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.Ed25519Signature2018)


            * [`JwsLinkedDataSignature`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.JwsLinkedDataSignature)


            * [`KeyPair`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.KeyPair)


            * [`LinkedDataProof`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.LinkedDataProof)


            * [`LinkedDataProofException`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.LinkedDataProofException)


            * [`LinkedDataSignature`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.LinkedDataSignature)


            * [`ProofPurpose`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.ProofPurpose)


            * [`ProofResult`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.ProofResult)


            * [`ProofSet`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.ProofSet)


            * [`PurposeResult`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.PurposeResult)


            * [`WalletKeyPair`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.WalletKeyPair)


            * [`derive()`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.derive)


            * [`get_properties_without_context()`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.get_properties_without_context)


            * [`sign()`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.sign)


            * [`verify()`](aries_cloudagent.vc.ld_proofs.md#aries_cloudagent.vc.ld_proofs.verify)


            * [Subpackages](aries_cloudagent.vc.ld_proofs.md#subpackages)


            * [Submodules](aries_cloudagent.vc.ld_proofs.md#submodules)


            * [aries_cloudagent.vc.ld_proofs.check module](aries_cloudagent.vc.ld_proofs.md#module-aries_cloudagent.vc.ld_proofs.check)


            * [aries_cloudagent.vc.ld_proofs.constants module](aries_cloudagent.vc.ld_proofs.md#module-aries_cloudagent.vc.ld_proofs.constants)


            * [aries_cloudagent.vc.ld_proofs.document_loader module](aries_cloudagent.vc.ld_proofs.md#module-aries_cloudagent.vc.ld_proofs.document_loader)


            * [aries_cloudagent.vc.ld_proofs.error module](aries_cloudagent.vc.ld_proofs.md#module-aries_cloudagent.vc.ld_proofs.error)


            * [aries_cloudagent.vc.ld_proofs.ld_proofs module](aries_cloudagent.vc.ld_proofs.md#module-aries_cloudagent.vc.ld_proofs.ld_proofs)


            * [aries_cloudagent.vc.ld_proofs.proof_set module](aries_cloudagent.vc.ld_proofs.md#module-aries_cloudagent.vc.ld_proofs.proof_set)


            * [aries_cloudagent.vc.ld_proofs.validation_result module](aries_cloudagent.vc.ld_proofs.md#module-aries_cloudagent.vc.ld_proofs.validation_result)


        * [aries_cloudagent.vc.vc_ld package](aries_cloudagent.vc.vc_ld.md)


            * [Subpackages](aries_cloudagent.vc.vc_ld.md#subpackages)


            * [Submodules](aries_cloudagent.vc.vc_ld.md#submodules)


            * [aries_cloudagent.vc.vc_ld.issue module](aries_cloudagent.vc.vc_ld.md#aries-cloudagent-vc-vc-ld-issue-module)


            * [aries_cloudagent.vc.vc_ld.prove module](aries_cloudagent.vc.vc_ld.md#aries-cloudagent-vc-vc-ld-prove-module)


            * [aries_cloudagent.vc.vc_ld.validation_result module](aries_cloudagent.vc.vc_ld.md#aries-cloudagent-vc-vc-ld-validation-result-module)


            * [aries_cloudagent.vc.vc_ld.verify module](aries_cloudagent.vc.vc_ld.md#aries-cloudagent-vc-vc-ld-verify-module)


* [aries_cloudagent.wallet package](aries_cloudagent.wallet.md)


    * [Subpackages](aries_cloudagent.wallet.md#subpackages)


        * [aries_cloudagent.wallet.models package](aries_cloudagent.wallet.models.md)


            * [Submodules](aries_cloudagent.wallet.models.md#submodules)


            * [aries_cloudagent.wallet.models.wallet_record module](aries_cloudagent.wallet.models.md#aries-cloudagent-wallet-models-wallet-record-module)


    * [Submodules](aries_cloudagent.wallet.md#submodules)


    * [aries_cloudagent.wallet.askar module](aries_cloudagent.wallet.md#aries-cloudagent-wallet-askar-module)


    * [aries_cloudagent.wallet.base module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.base)


        * [`BaseWallet`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet)


            * [`BaseWallet.create_local_did()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.create_local_did)


            * [`BaseWallet.create_public_did()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.create_public_did)


            * [`BaseWallet.create_signing_key()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.create_signing_key)


            * [`BaseWallet.get_local_did()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.get_local_did)


            * [`BaseWallet.get_local_did_for_verkey()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.get_local_did_for_verkey)


            * [`BaseWallet.get_local_dids()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.get_local_dids)


            * [`BaseWallet.get_posted_dids()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.get_posted_dids)


            * [`BaseWallet.get_public_did()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.get_public_did)


            * [`BaseWallet.get_signing_key()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.get_signing_key)


            * [`BaseWallet.pack_message()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.pack_message)


            * [`BaseWallet.replace_local_did_metadata()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.replace_local_did_metadata)


            * [`BaseWallet.replace_signing_key_metadata()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.replace_signing_key_metadata)


            * [`BaseWallet.rotate_did_keypair_apply()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.rotate_did_keypair_apply)


            * [`BaseWallet.rotate_did_keypair_start()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.rotate_did_keypair_start)


            * [`BaseWallet.set_did_endpoint()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.set_did_endpoint)


            * [`BaseWallet.set_public_did()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.set_public_did)


            * [`BaseWallet.sign_message()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.sign_message)


            * [`BaseWallet.unpack_message()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.unpack_message)


            * [`BaseWallet.verify_message()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.base.BaseWallet.verify_message)


    * [aries_cloudagent.wallet.bbs module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.bbs)


        * [`BbsException`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.bbs.BbsException)


        * [`create_bls12381g2_keypair()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.bbs.create_bls12381g2_keypair)


        * [`sign_messages_bls12381g2()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.bbs.sign_messages_bls12381g2)


        * [`verify_signed_messages_bls12381g2()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.bbs.verify_signed_messages_bls12381g2)


    * [aries_cloudagent.wallet.crypto module](aries_cloudagent.wallet.md#aries-cloudagent-wallet-crypto-module)


    * [aries_cloudagent.wallet.did_info module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.did_info)


        * [`DIDInfo`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo)


            * [`DIDInfo.did`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo.did)


            * [`DIDInfo.key_type`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo.key_type)


            * [`DIDInfo.metadata`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo.metadata)


            * [`DIDInfo.method`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo.method)


            * [`DIDInfo.verkey`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.DIDInfo.verkey)


        * [`KeyInfo`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.KeyInfo)


            * [`KeyInfo.key_type`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.KeyInfo.key_type)


            * [`KeyInfo.metadata`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.KeyInfo.metadata)


            * [`KeyInfo.verkey`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_info.KeyInfo.verkey)


    * [aries_cloudagent.wallet.did_method module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.did_method)


        * [`DIDMethod`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethod)


            * [`DIDMethod.holder_defined_did()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethod.holder_defined_did)


            * [`DIDMethod.method_name`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethod.method_name)


            * [`DIDMethod.supported_key_types`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethod.supported_key_types)


            * [`DIDMethod.supports_key_type()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethod.supports_key_type)


            * [`DIDMethod.supports_rotation`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethod.supports_rotation)


        * [`DIDMethods`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethods)


            * [`DIDMethods.from_did()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethods.from_did)


            * [`DIDMethods.from_metadata()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethods.from_metadata)


            * [`DIDMethods.from_method()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethods.from_method)


            * [`DIDMethods.register()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethods.register)


            * [`DIDMethods.registered()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.DIDMethods.registered)


        * [`HolderDefinedDid`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.HolderDefinedDid)


            * [`HolderDefinedDid.ALLOWED`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.HolderDefinedDid.ALLOWED)


            * [`HolderDefinedDid.NO`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.HolderDefinedDid.NO)


            * [`HolderDefinedDid.REQUIRED`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_method.HolderDefinedDid.REQUIRED)


    * [aries_cloudagent.wallet.did_posture module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.did_posture)


        * [`DIDPosture`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPosture)


            * [`DIDPosture.POSTED`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPosture.POSTED)


            * [`DIDPosture.PUBLIC`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPosture.PUBLIC)


            * [`DIDPosture.WALLET_ONLY`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPosture.WALLET_ONLY)


            * [`DIDPosture.get()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPosture.get)


            * [`DIDPosture.metadata`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPosture.metadata)


            * [`DIDPosture.moniker`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPosture.moniker)


            * [`DIDPosture.ordinal`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPosture.ordinal)


        * [`DIDPostureSpec`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPostureSpec)


            * [`DIDPostureSpec.moniker`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPostureSpec.moniker)


            * [`DIDPostureSpec.ordinal`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPostureSpec.ordinal)


            * [`DIDPostureSpec.posted`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPostureSpec.posted)


            * [`DIDPostureSpec.public`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.did_posture.DIDPostureSpec.public)


    * [aries_cloudagent.wallet.error module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.error)


        * [`WalletDuplicateError`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.error.WalletDuplicateError)


        * [`WalletError`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.error.WalletError)


        * [`WalletNotFoundError`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.error.WalletNotFoundError)


        * [`WalletSettingsError`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.error.WalletSettingsError)


    * [aries_cloudagent.wallet.in_memory module](aries_cloudagent.wallet.md#aries-cloudagent-wallet-in-memory-module)


    * [aries_cloudagent.wallet.indy module](aries_cloudagent.wallet.md#aries-cloudagent-wallet-indy-module)


    * [aries_cloudagent.wallet.key_pair module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.key_pair)


        * [`KeyPairStorageManager`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_pair.KeyPairStorageManager)


            * [`KeyPairStorageManager.delete_key_pair()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_pair.KeyPairStorageManager.delete_key_pair)


            * [`KeyPairStorageManager.find_key_pairs()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_pair.KeyPairStorageManager.find_key_pairs)


            * [`KeyPairStorageManager.get_key_pair()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_pair.KeyPairStorageManager.get_key_pair)


            * [`KeyPairStorageManager.store_key_pair()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_pair.KeyPairStorageManager.store_key_pair)


            * [`KeyPairStorageManager.update_key_pair_metadata()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_pair.KeyPairStorageManager.update_key_pair_metadata)


    * [aries_cloudagent.wallet.key_type module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.key_type)


        * [`KeyType`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyType)


            * [`KeyType.key_type`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyType.key_type)


            * [`KeyType.multicodec_name`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyType.multicodec_name)


            * [`KeyType.multicodec_prefix`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyType.multicodec_prefix)


        * [`KeyTypes`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyTypes)


            * [`KeyTypes.from_key_type()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyTypes.from_key_type)


            * [`KeyTypes.from_multicodec_name()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyTypes.from_multicodec_name)


            * [`KeyTypes.from_multicodec_prefix()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyTypes.from_multicodec_prefix)


            * [`KeyTypes.from_prefixed_bytes()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyTypes.from_prefixed_bytes)


            * [`KeyTypes.register()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.key_type.KeyTypes.register)


    * [aries_cloudagent.wallet.routes module](aries_cloudagent.wallet.md#aries-cloudagent-wallet-routes-module)


    * [aries_cloudagent.wallet.util module](aries_cloudagent.wallet.md#module-aries_cloudagent.wallet.util)


        * [`abbr_verkey()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.abbr_verkey)


        * [`b58_to_bytes()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.b58_to_bytes)


        * [`b64_to_bytes()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.b64_to_bytes)


        * [`b64_to_str()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.b64_to_str)


        * [`bytes_to_b58()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.bytes_to_b58)


        * [`bytes_to_b64()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.bytes_to_b64)


        * [`default_did_from_verkey()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.default_did_from_verkey)


        * [`full_verkey()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.full_verkey)


        * [`notify_endorse_did_attrib_event()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.notify_endorse_did_attrib_event)


        * [`notify_endorse_did_event()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.notify_endorse_did_event)


        * [`pad()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.pad)


        * [`random_seed()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.random_seed)


        * [`set_urlsafe_b64()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.set_urlsafe_b64)


        * [`str_to_b64()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.str_to_b64)


        * [`unpad()`](aries_cloudagent.wallet.md#aries_cloudagent.wallet.util.unpad)


## Submodules

## aries_cloudagent.version module

Library version information.
